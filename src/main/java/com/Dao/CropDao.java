package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.Buy;
import com.model.Crops;
import com.vcube.utility.DBConnection;

public class CropDao implements CropDaoInterface {

    String status = "";

    @Override
    public String addcrops(Crops c) {
        try {
            DBConnection db = new DBConnection();
            Connection con = db.getconnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO crops (farmer_id, crop_name, crop_type, quantity, price) VALUES (?,?,?,?,?)"
            );

            ps.setInt(1, c.getFarmer_id());
            ps.setString(2, c.getCrop_name());
            ps.setString(3, c.getCrop_type());
            ps.setInt(4, c.getQuantity());
            ps.setInt(5, c.getPrice());

            int n = ps.executeUpdate();
            if (n > 0) {
                status = "success";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    @Override
    public List<Crops> getCropsByFarmer(int farmerId) {

        List<Crops> list = new ArrayList<>();

        try {
            DBConnection db = new DBConnection();
            Connection con = db.getconnection();

            String sql = "SELECT * FROM crops WHERE farmer_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, farmerId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Crops c = new Crops();

                // ✅ Correct mappings
                c.setFarmer_id(rs.getInt("farmer_id"));
                c.setCrop_name(rs.getString("crop_name"));
                c.setCrop_type(rs.getString("crop_type"));
                c.setQuantity(rs.getInt("quantity"));
                c.setPrice(rs.getInt("price"));

                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }



    @Override
    public String buycrop(Buy b, Crops c) {

        String status = "failed";

        try {

            DBConnection db = new DBConnection();
            Connection con = db.getconnection();

            // 1️⃣ Get crop details from database
            PreparedStatement ps1 = con.prepareStatement(
                    "SELECT quantity, price FROM crops WHERE id=?");

            ps1.setInt(1, c.getId());
            ResultSet rs = ps1.executeQuery();

            if (rs.next()) {

                int availableQty = rs.getInt("quantity");
                double price = rs.getDouble("price");

                int purchaseQty = b.getQuantity();   // ✅ correct quantity

                if (purchaseQty <= availableQty) {

                    double total = purchaseQty * price;

                    // 2️⃣ Insert purchase record
                    PreparedStatement ps2 = con.prepareStatement(
                            "INSERT INTO purchase(crop_id,buyer_name,quantity,total) VALUES(?,?,?,?)");

                    ps2.setInt(1, c.getId());
                    ps2.setString(2, b.getBuyer());
                    ps2.setInt(3, purchaseQty);
                    ps2.setDouble(4, total);

                    int n = ps2.executeUpdate();

                    if (n > 0) {

                        // 3️⃣ Update crop quantity after purchase
                        PreparedStatement ps3 = con.prepareStatement(
                                "UPDATE crops SET quantity = quantity - ? WHERE id=?");

                        ps3.setInt(1, purchaseQty);
                        ps3.setInt(2, c.getId());

                        ps3.executeUpdate();

                        status = "success";
                    }

                } else {
                    status = "insufficient_stock";
                }
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

}