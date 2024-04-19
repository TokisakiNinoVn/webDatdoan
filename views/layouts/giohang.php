<?php
	include '../../controllers/layouts/giohang.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Giỏ hàng</title>
	<!-- Latest compiled and minified CSS & JS -->
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS & JS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <script src="//code.jquery.com/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/4e28125301.js"></script>
    

    <link rel="stylesheet" type="text/css" href="font/css/font-awesome.min.css">
    <!-- bang chuyen -->
	<script src="js/js.js"></script>
	<script type="text/javascript" src="sticky/jquery.sticky.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){

		});
	</script>
	<link rel="stylesheet" href="<?= BASE_URL ?>css/layout.css">
	<link rel="stylesheet" href="<?= BASE_URL ?>css/style.css">
	<link rel="stylesheet" href="<?= BASE_URL ?>css/giohang.css">
</head>

<body>
	<input class="id_ban" type="text" hidden value="<?= $id_ban;?>">
	<div class="container container_nino" style="margin: 10px 0 10px 0;">

		<div class="giohang">
			<?php if(isset($_SESSION[SHOPPING_CART_SESSION][$id_ban]) && count($_SESSION[SHOPPING_CART_SESSION][$id_ban])>0): ?>
				<div class="total_sanpham">Hiện có <span class="sl"></span> sản phẩm</div>
				<form action="">
					<table class="table table-hover" >
						<thead>
							<tr>
								<th><p>Sản phẩm</p></th>
								<th><p>Giá</p></th>
								<th><p>Số lượng</p></th>
								<th><p>Tổng tiền</p></th>
								<th><p>Xóa</p></th>
							</tr>
						</thead>
						<tbody>
							<?php $total=0;$sl=0; ?>
							<?php foreach($_SESSION[SHOPPING_CART_SESSION][$id_ban] as $pr): ?>
							<tr class="cart_item">
								<td class="img_name_item" >
									<div class="img_name_item" >
										<img class="img_preview_item" src="<?= BASE_URL ?>upload/products/<?= $pr['product_info']['img'] ?>" alt="">
									</div>
									<div class="name" ><?= $pr['product_info']['name'] ?></div>
								</td>
								<td><div class="text-center" >
									<?php  echo $pr['product_info']['unit_price'];
									?></div></td>
								<td><div class="text-center"><span class="quantity" id="<?=  $pr['product_info']['id']; ?>" style="width: 50px;" ><?= $pr['quantity'] ?></span></div></td>
								<td><div class="text-center price"><span class="price"><?= $pr['price']  ?></span></div></td>
								<td><div class="text-center">
									<a class="del_item" href="<?= BASE_URL . 'controllers/layouts/cart/delete.php?id=' . $pr['product_info']['id'] . '&id_ban=' . $id_ban;?>"><ion-icon name="close-outline"></ion-icon></a>
								</div></td>
							</tr>
							<?php $sl = $sl+$pr['quantity']; ?>

							<?php endforeach ?>
						</tbody>
					</table>
				</form>
				<div class="thanhtoan">
					<span> Tổng tiền : <span class="tong"><?= $_SESSION['total'][$id_ban]; ?></span> VND </span>
					<a><button class="order tt">Thanh toán</button></a>
					<a href="index.php"><button class="order">Quay lại</button></a>
				</div>
				<?php else: ?>
					<div class="alert_giohang">
						<img src="<?= BASE_URL ?>upload/order/emtyGioHang2.jpg" alt="Gio hang Trong">
						<span class="alert_giohang">
							🫥Opp... Nơi này hơi trống trải!
						</span>
					</div>
					<a class="back_to_home" href="index.php"><button class="order">Quay lại</button></a>
			<?php endif ?>
		</div>

		<div class="footer"></div>
	</div>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script >
		
	</script>


	<script type="text/javascript">
		$(document).ready(function() {
			$(".sl").html(<?= $sl; ?>);
			var id_ban = $('.id_ban').val();
			$(".tt").click(function(){
				$.ajax({
					url:"<?=BASE_URL . 'controllers/layouts/api/thanhtoan.php';?>",
					type:"POST",
					data:{
						id_ban:id_ban
					},
					success: function(){
						alert("Thanh toán thành công");
						window.location.href="ban.php";

					}
				});
			});

		});
	</script>
	<script src="<?= BASE_URL ?>js/layout.js"></script>
	<script src="<?= BASE_URL ?>js/jquery-3.2.1.min.js"></script>

	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
