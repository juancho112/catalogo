<?php
$title="Galería de imágenes";

include ("../conexion.php");
$active_config="active";
$active_banner="active";

?>

<html lang="en">
  <head>
    <title>ADMINISTRADOR</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <link href="css/navbar-fixed-top.css" rel="stylesheet">
  </head>
  <body>

    <div class="container">
      <div class="row">
          <h1 class="page-header">ADMINISTRADOR</h1>
	       <ol class="breadcrumb">
      		  <li><a href="#">Inicio</a></li>
      		  <li class="active">Banner</li>
		    </ol>
			<div class="row">
			  <div class="col-xs-12 text-right">
				  <a href='banneradd.php' class="btn btn-default" ></span> Agregar imagen</a>
			  </div>
			</div>
		  <br>
		  <div id="loader" class="text-center"> <span><img src="./img/ajax-loader.gif"></span></div>
		  <div class="outer_div"></div>
	   </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>
<script>
	$(document).ready(function(){
		load(1);
	});
	function load(page){
		var parametros = {"action":"ajax","page":page};
		$.ajax({
			url:'./ajax/banner_ajax.php',
			data: parametros,
			 beforeSend: function(objeto){
			$("#loader").html("<img src='../img/ajax-loader.gif'>");
		  },
			success:function(data){
				$(".outer_div").html(data).fadeIn('slow');
				$("#loader").html("");
			}
		})
	}
	function eliminar_slide(id){
		page=1;
		var parametros = {"action":"ajax","page":page,"id":id};
		if(confirm('Se eliminara la imagen \n\n Desea continuar?')){
		$.ajax({
			url:'./ajax/banner_ajax.php',
			data: parametros,
			 beforeSend: function(objeto){
			$("#loader").html("<img src='../images/ajax-loader.gif'>");
		  },
			success:function(data){
				$(".outer_div").html(data).fadeIn('slow');
				$("#loader").html("");
			}
		})
	}
	}
</script>
