<?php 

	include '../../../core.php';
	include '../../../models/layouts/index.php';
	include '../../../models/layouts/giohang.php';

	$index =new index();
	$sp =$index->get_order();
	?>
	<?php $row=1;$soluong = 0; foreach($sp as $sp): ?>
						<tr class="cart_item">
							<td><?php echo $row ?></td>
							<td>
								<div>
								<img style="height: 100px;width: 100px;"  src="<?php echo BASE_URL ?>upload/products/<?php echo $sp['img'] ?>" alt="">
								</div>
								
							</td>
							<td>
								<div class="name" ><?php echo $sp['name'] ?></div>
								
							</td>
							<td><div class="name" ><?php echo $sp['soluong'] ?></div></td>
							<td><div class="name" ><?php echo $sp['ban'] ?></div></td>
							<td>
								<a href="<?= BASE_URL. 'controllers/layouts/api/xoa-dat-hang.php?id=' . $sp['id_order'];  ?>"><i  class="fa fa-trash-o" aria-hidden="true" style="color: black;font-size: 21px;"></i></a>
							</td>
							<td>
								<?php $row++; $soluong++;

								?>
						</tr>
								
						
				<?php endforeach ?>




