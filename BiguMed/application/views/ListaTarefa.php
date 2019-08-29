<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
	<meta charset="utf-8">
	<title>Primeira Tarefa</title>
</head>

<body>
	<div id="container">
		<!-- <h1>Adicionar</h1>

		

		<label for="nome">Nome</label>
		<input type="input" name="nome" /><br />

		<label for="descricao">Descrição</label>
		<textarea name="descricao"></textarea><br />

		<label for="data">Data</label>
		<input type="date" name="data" /><br />

		<input type="submit" name="submit" value="Adicionar Tarefa" />

		</form> -->


		<h1>Listagem</h1>
		<table>
			<tr>
				<th>Nome</th>
				<th>Descrição</th>
				<th>Data</th>
				<th>Feito?</th>
			</tr>
			<?php foreach ($tarefa as $row) : ?>
				<tr>
					<td><?php echo $row['nome']; ?></td>
					<td><?php echo $row['descricao']; ?></td>
					<td><?php echo $row['data_agenda']; ?></td>
					<td><?php echo "<a href='".$row['codigo']."'>Feito</a>"; ?></td>
				</tr>
			<?php endforeach; ?>
		</table>
	</div>
</body>

</html>