<?php include 'catalog.php'; ?>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF8" />
	<link rel="stylesheet" href="css/style.css">
	<title>Test</title>
</head>
<body>
<div class="warp">
<?php
	echo "<div class='left_menu'><ul>";
	echo $categories_menu;
	echo "</ul></div>";
?>
	<div class="right_cont">
		<?php if($tovars): ?>
			<table cellspacing='0'> 
				<tr><th>ID</th><th>Наименование товара</th><th>Категория товара</th><th>Вес товара, кг</th></tr>
			<?php foreach($tovars as $tovars): ?>
				<tr><td><?=$tovars['id']?></td><td><?=$tovars['name']?></td>
					<td><?=$tovars['category_id']?></td><td><?=$tovars['source']?></td>
				</tr>

			<?php endforeach; ?>
			</table>
		<?php else: ?>
			<p>Здесь товаров нет!</p>
		<?php endif; ?>
	</div>
	<div style="clear: both;"></div>
</div>
</body>
</html>