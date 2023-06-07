<?php
if(isset($_POST['submit'] )) 
{
    echo "<script>window.location='index.php'</script>";
}
require "vendor/Autoload.php";
use Razorpay\Api\Api;

$keyId = "rzp_test_fVWlxNwdI90zig";
$keySecret = "3hY88cB4f5DNc10FGOIpPYsH";

session_start();
$api = new Api($keyId, $keySecret);
$actual_amount = $_GET['name'];
$currency = "INR";
$receipt = str_replace('.', '', microtime(as_float:true)).rand(1, 10000).'2';
$order = $api->order->create(array('receipt' => $receipt, 'amount' => $actual_amount * 100, 'currency' => $currency, 'payment_capture' => '1'));
$order_id = $order['id'];
$order_receipt = $order['receipt'];
$order_amount = $order['amount'];
$order_currency = $order['currency'];
$order_created_at = $order['created_at'];

$_SESSION['razorpay_order_id'] = $order_id;
?>

<form action="status.php" method="POST">
<script
    src="https://checkout.razorpay.com/v1/checkout.js"
    data-key="<?=$keyId?>" 
    data-amount="<?=$actual_amount?>"
    data-currency="<?=$currency?>"
    data-order_id="<?=$order_id?>"
    data-buttontext="Make Payment"
    data-name="Starlight"
    data-description="Yes."
    data-image="https://example.com/your_logo.jpg"
    data-theme.color="#00AC4C"
></script>
</form>
<button><a href="index.php">Go back</a></button>
