import "bialet" for Response

var regalos = ["Medias", "Caramelos", "Vitel Toné"]

Response.out("

<!DOCTYPE html>
<head>
  <title>Regalos</title>
  <meta charset='utf-8' />
  <link rel='stylesheet' type='text/css' href='/styles.css' />
  <meta name='viewport' content='width=device-width, initial-scale=1.0' />
</head>
<body class='App'>

  <h1>Regalos:</h1>

  <ul>
    %( regalos.map{| regalo | "<li>%( regalo )</li>" } )
  </ul>

</body>
</html>

")
