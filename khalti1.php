<?php 
include 'setting.php';
include("includes/db.php");
session_start();

//include("includes/db.php");

include("functions/functions.php");


?>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <script src="https://khalti.s3.ap-south-1.amazonaws.com/KPG/dist/2020.12.17.0.0.0/khalti-checkout.iffe.js"></script>
</head>
<style>
    body {
        min-height: 100vh;
        display: grid;
        place-items: center;
    }
    /* button {
        
        border: 5px;
        
        border-radius: 4px;
        color: red;
        background: transparent;
        padding: 400px 200px;
    }  */
</style>
<body>
    ...
    <!-- Place this where you need payment button -->
    <button style="text-align:center; padding: 70px 200px;"  class="btn btn-primary"  id="payment-button">Pay with Khalti</button>
    <!-- Place this where you need payment button -->
    <!-- Paste this code anywhere in you body tag -->
    <script>
        var config = {
            // replace the publicKey with yours
            "publicKey": "test_public_key_dc74e0fd57cb46cd93832aee0a390234",
            "productIdentity": "1234567890",
            "productName": "Dragon",
            "productUrl": "http://gameofthrones.wikia.com/wiki/Dragons",
            "paymentPreference": [
                "KHALTI",
                "EBANKING",
                "MOBILE_BANKING",
                "CONNECT_IPS",
                "SCT",
                ],
            "eventHandler": {
                onSuccess (payload) {
                    // hit merchant api for initiating verfication
                    console.log(payload);
                },
                onError (error) {
                    console.log(error);
                },
                onClose () {
                    console.log('widget is closing');
                }
            }
        };

        var checkout = new KhaltiCheckout(config);
        var btn = document.getElementById("payment-button");
        var total = "<?php $dd= total_price();$pp=$dd*100; ?>";
        btn.onclick = function () {
            // minimum transaction amount must be 10, i.e 1000 in paisa.
            checkout.show({amount:total*100});
        }
    </script>
    <!-- Paste this code anywhere in you body tag -->
    ...
</body>
</html>