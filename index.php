		<?php
		session_start();
		include_once("conexao.php");

		
		// $sqlLogon = "SELECT uni_codigo, esp_codigo FROM logon WHERE id_login = '" . $_SESSION['usr_codigo'] . "' ORDER BY id DESC LIMIT 1";
		@$result_events = "SELECT id, title, color, start, end FROM events where title = '" . $_SESSION['username'] . "' ";
		$resultado_events = mysqli_query($conn, @$result_events);
		?>
		<!DOCTYPE html>
		<html lang='pt-br'>
			<head>
				<meta charset='utf-8' />
				<title>Agenda Cursos da Alura</title>
				<link href='css/bootstrap.min.css' rel='stylesheet'>
				<link href='css/fullcalendar.min.css' rel='stylesheet' />
				<link href='css/fullcalendar.print.min.css' rel='stylesheet' media='print' />
				<link href='css/personalizado.css' rel='stylesheet' />
				<link href='css/datepicker/css/datepicker.css' rel='stylesheet'>
				<script src='js/jquery.min.js'></script>
				<script src='js/bootstrap.min.js'></script>
				<script src='js/moment.min.js'></script>
				<script src='js/fullcalendar.min.js'></script>
				<script src='locale/pt-br.js'></script>
				<script src='css/datepicker/js/bootstrap-datepicker.js'></script>
				<script>
					$(document).ready(function() {
						$('#calendar').fullCalendar({
							plugins: ['interaction', 'dayGrid',  'timeGrid', 'listWeek'],
							header: {
								left: 'prev,next today',
								center: 'title',
								right: 'month,agendaWeek,agendaDay,listWeek'
							},					
							defaultDate: Date(),
							navLinks: true, // can click day/week names to navigate views
							editable: false,
							eventLimit: true,
							events: 'list_eventos.php',
							timeFormat:'HH:mm',

							//permite selecionar a grid do dia atual até o 3 dia para frente
							selectConstraint: {
								start: $.fullCalendar.moment().subtract(1, 'hour'),
								end: $.fullCalendar.moment().startOf('now').add(4, 'day')
							},
							
							views: {
							settimana: {
								type: 'agendaWeek',
								duration: {
									days: 7
								},
								title: 'Apertura',
								columnFormat: 'dddd', // Format the day to only show like 'Monday'
								// hiddenDays: [0, 0] // Hide Sunday and Saturday?
							}
						},
						defaultView: 'settimana',

						eventLimit: true, // allow 'more' link when too many events

						

						eventClick: function(event) {						
							$('#visualizar #id').text(event.id);
							$('#visualizar #id').val(event.id);
							$('#visualizar #title').text(event.title);
							$('#visualizar #title').val(event.title);
							$('#visualizar #start').text(event.start.format('DD/MM/YYYY HH:mm:ss'));
							$('#visualizar #start').val(event.start.format('DD/MM/YYYY HH:mm:ss'));
							$('#visualizar #end').text(event.end.format('DD/MM/YYYY HH:mm:ss'));
							$('#visualizar #end').val(event.end.format('DD/MM/YYYY HH:mm:ss'));
							$('#visualizar #color').val(event.color);
							$('#visualizar').modal('show');
							return false;
						},
							
							selectable: true,
							selectHelper: true,
							select: function(start, end){
								$('#cadastrar #start').val(moment(start).format('DD/MM/YYYY HH:mm:ss'));
								$('#cadastrar #end').val(moment(end).format('DD/MM/YYYY HH:mm:ss'));
								$('#cadastrar').modal('show');						
							},
							events: [
								<?php
									while($row_events = mysqli_fetch_array($resultado_events)){
										?>
										{
										id: '<?php echo $row_events['id']; ?>',
										title: '<?php echo $row_events['title']; ?>',
										start: '<?php echo $row_events['start']; ?>',
										end: '<?php echo $row_events['end']; ?>',
										color: '<?php echo $row_events['color']; ?>',
										},<?php
									}
								?>
							]
						});
					});
					
					//Mascara para o campo data e hora
					function DataHora(evento, objeto){
						var keypress=(window.event)?event.keyCode:evento.which;
						campo = eval (objeto);
						if (campo.value == '00/00/0000 00:00:00'){
							campo.value=""
						}
					
						caracteres = '0123456789';
						separacao1 = '/';
						separacao2 = ' ';
						separacao3 = ':';
						conjunto1 = 2;
						conjunto2 = 5;
						conjunto3 = 10;
						conjunto4 = 13;
						conjunto5 = 16;
						if ((caracteres.search(String.fromCharCode (keypress))!=-1) && campo.value.length < (19)){
							if (campo.value.length == conjunto1 )
							campo.value = campo.value + separacao1;
							else if (campo.value.length == conjunto2)
							campo.value = campo.value + separacao1;
							else if (campo.value.length == conjunto3)
							campo.value = campo.value + separacao2;
							else if (campo.value.length == conjunto4)
							campo.value = campo.value + separacao3;
							else if (campo.value.length == conjunto5)
							campo.value = campo.value + separacao3;
						}else{
							event.returnValue = false;
						}
					}
				</script>
			</head>
			<body>
				<div class="container">
					
					<?php
					if(isset($_SESSION['msg'])){
						echo $_SESSION['msg'];
						unset($_SESSION['msg']);
					}
					?>					
					<div style="margin-right: right; text-align: right;" id="saudacao">					
					<span class="border">
						<?php 
							echo "Bem-vindo ".$_SESSION['username'];  
						?>
						</span>
					</div><br>
				
					<div id='calendar'></div>			
				</div>

				<div class="modal fade" id="visualizar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" data-backdrop="static">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title text-center">Dados do Agendamernto</h4>
							</div>
							<div class="modal-body">
								<div class="visualizar">
									<dl class="dl-horizontal">
										<dt>ID Agenda</dt>
										<dd id="id"></dd>
										<dt>Nome - Time</dt>
										<dd id="title"></dd>
										<dt>Inicio</dt>
										<dd id="start"></dd>
										<dt>Fim</dt>
										<dd id="end"></dd>
									</dl>
									<button class="btn btn-canc-vis btn-warning">Editar</button>
								</div>
								<div class="form">
									<form class="form-horizontal" method="POST" action="proc_edit_evento.php">
										<div class="form-group">
											<label for="inputEmail3" class="col-sm-2 control-label">Nome</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="title" id="title" placeholder="nome de rede">
											</div>
										</div>										
										<div class="form-group">
											<label for="inputEmail3" class="col-sm-2 control-label">Data Inicial</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="start" id="start" onKeyPress="DataHora(event, this)">
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail3" class="col-sm-2 control-label">Data Final</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" name="end" id="end" onKeyPress="DataHora(event, this)">
											</div>
										</div>
										<input type="hidden" class="form-control" name="id" id="id">
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="button" class="btn btn-canc-edit btn-primary">Cancelar</button>
												<button type="submit" class="btn btn-warning">Salvar Alterações</button>
											</div>
										</div>
									</form>
									
									<form class="form-horizontal" method="POST" id="deletar" action="del_event.php" >                            
										<input type="hidden" class="form-control" name="del_id" id="id" >
										<button type="submit" class="btn btn-danger">Excluir</button>         								
									</form>
								
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="modal fade" id="cadastrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" data-backdrop="static">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title text-center">Agendar</h4>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" method="POST" action="proc_cad_evento.php">
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">Nome</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="title" placeholder="nome de rede" value= "<?php echo $_SESSION['username']; ?>"/>
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">Data Inicial</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="start" id="start" onKeyPress="DataHora(event, this)">
										</div>
									</div>


									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">Data Final</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="end" id="end" onKeyPress="DataHora(event, this)">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-success">Cadastrar</button>
										</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<script>
					$('.btn-canc-vis').on("click", function() {
						$('.form').slideToggle();
						$('.visualizar').slideToggle();
					});
					$('.btn-canc-edit').on("click", function() {
						$('.visualizar').slideToggle();
						$('.form').slideToggle();
					});
					$('.btn-danger').on("click", function() {
						$('.deletar').slideToggle();
						$('.form').slideToggle();
					});
				</script>
			</body>
		</html>
