<?php
include("includes/db.php");
include("functions/functions.php");
session_start();

// eSewa API Configurationnnnn
$epay_url = "https://rc-epay.esewa.com.np/api/epay/main/v2/form";
$success_url = "http://localhost/bishalcommerce/payment_success.php";
$fail_url = "http://localhost/bishalcommerce/payment_fail.php";
$secret_key = '8gBm/:&EnhH.1/q';

// Generate unique transaction ID
$transaction_uuid = uniqid('ESEWA_') . '_' . time();
$product_code = "EPAYTEST";

// Get total amount from cart
function total_amount()
{
    global $db;
    $ip_add = getRealUserIp();
    $total = 0;

    $select_cart = "SELECT * FROM cart WHERE ip_add=?";
    $stmt = mysqli_prepare($db, $select_cart);
    mysqli_stmt_bind_param($stmt, "s", $ip_add);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    while ($record = mysqli_fetch_array($result)) {
        $pro_id = $record['p_id'];
        $pro_qty = $record['qty'];

        $get_price = "SELECT * FROM products WHERE product_id=?";
        $price_stmt = mysqli_prepare($db, $get_price);
        mysqli_stmt_bind_param($price_stmt, "s", $pro_id);
        mysqli_stmt_execute($price_stmt);
        $price_result = mysqli_stmt_get_result($price_stmt);

        while ($row_price = mysqli_fetch_array($price_result)) {
            $sub_total = $row_price['product_price'] * $pro_qty;
            $total += $sub_total;
        }
        mysqli_stmt_close($price_stmt);
    }
    mysqli_stmt_close($stmt);

    return $total;
}

$total_amount = total_amount();

// Generate signature - make sure values are properly formatted
$message = "total_amount=" . number_format($total_amount, 2, '.', '') .
    ",transaction_uuid=" . $transaction_uuid .
    ",product_code=" . $product_code;

// Generate signature using HMAC SHA256
$signature = base64_encode(hash_hmac('sha256', $message, $secret_key, true));

// Debug information (remove in production)
// error_log("Message for signature: " . $message);
// error_log("Generated signature: " . $signature);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eSewa Payment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <form action="<?php echo htmlspecialchars($epay_url); ?>" method="POST">
            <input type="hidden" name="amount" value="<?php echo number_format($total_amount, 2, '.', ''); ?>" required>
            <input type="hidden" name="tax_amount" value="0.00" required>
            <input type="hidden" name="total_amount" value="<?php echo number_format($total_amount, 2, '.', ''); ?>" required>
            <input type="hidden" name="transaction_uuid" value="<?php echo htmlspecialchars($transaction_uuid); ?>" required>
            <input type="hidden" name="product_code" value="<?php echo htmlspecialchars($product_code); ?>" required>
            <input type="hidden" name="product_service_charge" value="0.00" required>
            <input type="hidden" name="product_delivery_charge" value="0.00" required>
            <input type="hidden" name="success_url" value="<?php echo htmlspecialchars($success_url); ?>" required>
            <input type="hidden" name="failure_url" value="<?php echo htmlspecialchars($fail_url); ?>" required>
            <input type="hidden" name="signed_field_names" value="total_amount,transaction_uuid,product_code" required>
            <input type="hidden" name="signature" value="<?php echo htmlspecialchars($signature); ?>" required>

            <button type="submit" class="btn btn-success btn-lg btn-block">
                Proceed to Pay with eSewa
            </button>
        </form>
    </div>
</body>

</html>
