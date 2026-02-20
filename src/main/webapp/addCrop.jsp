<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Crop</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to right, #43cea2, #185a9d);
        min-height: 100vh;
    }

    .container {
        width: 480px;
        margin: 80px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.25);
    }

    h2 {
        text-align: center;
        color: #185a9d;
        margin-bottom: 25px;
        font-weight: bold;
    }

    label {
        font-weight: bold;
        color: #444;
        margin-top: 12px;
        display: block;
    }

    input, select {
        width: 100%;
        padding: 12px;
        margin-top: 6px;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input:focus, select:focus {
        border-color: #185a9d;
        outline: none;
        box-shadow: 0 0 6px #185a9d;
    }

    button {
        width: 100%;
        padding: 14px;
        margin-top: 20px;
        background: linear-gradient(to right, #43cea2, #185a9d);
        color: white;
        font-size: 16px;
        font-weight: bold;
        border: none;
        border-radius: 12px;
        cursor: pointer;
        transition: 0.3s ease;
    }

    button:hover {
        transform: scale(1.05);
        background: linear-gradient(to right, #185a9d, #43cea2);
    }
</style>
</head>

<body>

<%@ include file="farmernav.jsp" %>

<div class="container">
    <h2>🌱 Add Crop Details</h2>

    <form action="AddCrop" method="post">

        <!-- Crop Name Dropdown -->
        <label>🌾 Crop Name</label>
        <select name="crop_name" required>
            <option value="">-- Select Crop --</option>

            <!-- Grains -->
            <option value="Rice">Rice</option>
            <option value="Wheat">Wheat</option>
            <option value="Maize">Maize</option>
            <option value="Barley">Barley</option>
            <option value="Millets">Millets</option>

            <!-- Vegetables -->
            <option value="Tomato">Tomato</option>
            <option value="Potato">Potato</option>
            <option value="Onion">Onion</option>
            <option value="Carrot">Carrot</option>
            <option value="Cabbage">Cabbage</option>
            <option value="Brinjal">Brinjal</option>
            <option value="Chilli">Chilli</option>

            <!-- Fruits -->
            <option value="Mango">Mango</option>
            <option value="Banana">Banana</option>
            <option value="Apple">Apple</option>
            <option value="Orange">Orange</option>
            <option value="Papaya">Papaya</option>
            <option value="Grapes">Grapes</option>

            <!-- Pulses -->
            <option value="Red Gram">Red Gram</option>
            <option value="Green Gram">Green Gram</option>
            <option value="Black Gram">Black Gram</option>
            <option value="Bengal Gram">Bengal Gram</option>

            <!-- Oil Seeds -->
            <option value="Groundnut">Groundnut</option>
            <option value="Sunflower">Sunflower</option>
            <option value="Mustard">Mustard</option>
            <option value="Soybean">Soybean</option>

            <!-- Spices -->
            <option value="Turmeric">Turmeric</option>
            <option value="Coriander">Coriander</option>
            <option value="Pepper">Pepper</option>
            <option value="Cardamom">Cardamom</option>

            <!-- Cash Crops -->
            <option value="Cotton">Cotton</option>
            <option value="Sugarcane">Sugarcane</option>
            <option value="Tea">Tea</option>
            <option value="Coffee">Coffee</option>
        </select>

        <!-- Crop Type Dropdown -->
        <label>🌿 Crop Type</label>
        <select name="crop_type" required>
            <option value="">-- Select Crop Type --</option>
            <option value="Grains">Grains</option>
            <option value="Vegetables">Vegetables</option>
            <option value="Fruits">Fruits</option>
            <option value="Pulses">Pulses</option>
            <option value="Oil Seeds">Oil Seeds</option>
            <option value="Spices">Spices</option>
            <option value="Cash Crops">Cash Crops</option>
            <option value="Plantation Crops">Plantation Crops</option>
            <option value="Medicinal Plants">Medicinal Plants</option>
            <option value="Floriculture">Floriculture</option>
        </select>

        <label>⚖ Quantity (Kg)</label>
        <input type="number" name="quantity" placeholder="Enter quantity" required>

        <label>💰 Price (per Kg)</label>
        <input type="number" name="price" placeholder="Enter price" required>

        <button type="submit">➕ Add Crop</button>

    </form>
</div>

</body>
</html>
