<?php
	require_once "delete.logic.php";
?>
	<h1>Delete Birthday</h1>
	<p>Are you sure you want to delete:</p>
	<form method="post">
		<div>
			<input type="hidden" name="id" value="<?=$birthdays['id']?>">
			<label for="person">Person:</label>
			<span><?=$birthdays['person']?></span>
		</div>
		<div>
			<label></label>
			<input type="submit" name="confirmed" value="Yes">
			<input type="submit" name="canceled" value="No">
		</div>
	</form>
