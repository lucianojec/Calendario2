<?php
session_start();

//Incluir conexao com BD
include_once("conexao.php");

	$title = filter_input(INPUT_POST, 'title', FILTER_SANITIZE_STRING);
	$color = filter_input(INPUT_POST, 'color', FILTER_SANITIZE_STRING);
	$start = filter_input(INPUT_POST, 'start', FILTER_SANITIZE_STRING);
	$end = filter_input(INPUT_POST, 'end', FILTER_SANITIZE_STRING);

	$color = "40E0D0";

	$data = explode(" ", $start);
	list($date, $hora) = $data;
	$data_sem_barra = array_reverse(explode("/", $date));
	$data_sem_barra = implode("-", $data_sem_barra);
	$start_sem_barra = $data_sem_barra . " " . $hora;
	
	$data = explode(" ", $end);
	list($date, $hora) = $data;
	$data_sem_barra = array_reverse(explode("/", $date));
	$data_sem_barra = implode("-", $data_sem_barra);
	$end_sem_barra = $data_sem_barra . " " . $hora;

	$query = "SELECT COUNT(id) as quantidade from events WHERE (`start` <= '$start_sem_barra' AND `end` >= '$start_sem_barra') OR (`start` <= '$end_sem_barra' AND `end` >= '$end_sem_barra')";
	$sql = mysqli_query($conn, $query);
	$row = mysqli_fetch_assoc($sql);
	$row = $row['quantidade'];

	if($row >= 14) 
	{   
		$_SESSION['msg'] = "<div class='alert alert-danger' role='alert'>Horário já ocupado<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";   
		header("Location: index.php");
	} 
	else 
	{
		$query_events_future = "SELECT count(title) as events_future FROM events where `start` >= now() and title = '" . $_SESSION['username'] . "' ";
		$sql_events_future = mysqli_query($conn, $query_events_future);
		$row_events_future = mysqli_fetch_assoc($sql);
		$row_events_future = $row_events_future['events_future'];

		if($row_events_future >=2)
		{
			if(!empty($title) && !empty($color) && !empty($start) && !empty($end))
			{	
				$result_events = "INSERT INTO events (title, color, start, end) VALUES ('$title', '$color', '$start_sem_barra', '$end_sem_barra')";
				$resultado_events = mysqli_query($conn, $result_events);		
				if(mysqli_insert_id($conn))
				{
					$_SESSION['msg'] = "<div class='alert alert-success' role='alert'>O Evento Cadastrado com Sucesso <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";		
					header("Location: index.php");
				}
				else
				{
					$_SESSION['msg'] = "<div class='alert alert-danger' role='alert'>Erro ao cadastrar o evento<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";		
					header("Location: index.php");
				}			
			}
			else
			{
				$_SESSION['msg'] = "<div class='alert alert-danger' role='alert'>Erro ao cadastrar o evento aqui<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
				header("Location: index.php");
			}
		}
		else
		{
			$_SESSION['msg'] = "<div class='alert alert-danger' role='alert'>Você já possui 03 agendamentos no futuro  $row_events_future <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div>";
				header("Location: index.php");
		}
	}