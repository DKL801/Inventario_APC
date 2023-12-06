<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <h1 style="text-align:center">La pagina no se encuentra disponible <br>
         O no cuenta con el acceso a ella <br>
    <img src="images/404.png" alt="Imagen" width="500" style="margin-top: 20px;"><br>
    <button class="btn btn-404 bg-cyan" type="submit" onclick="window.location.href='{{ url('/') }}'">Ir a la pagina de Inicio</button>
    </h1>
</body>
</html>