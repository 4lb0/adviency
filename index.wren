import "bialet" for Request, Response, Db

if (Request.isPost()) {
  Db.save("regalos", {"nombre": Request.post("regalo")})
}

var regalos = Db.all("SELECT * FROM regalos")

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

  <div class='form-container'>
    <form method='post'>
      <input type='text' name='regalo' />
      <button>Agregar</button>
    </form>
  </div>

  <div class='list-container'>
    <ul>
      %( regalos.map{| regalo | "
        <li>
          %( regalo["nombre"] )
          <!-- Esto no deberia ser un link! Ver vulnerabilidades de CSRF -->
          <a href='eliminar?regalo=%( regalo["id"] )' class='eliminar'>Eliminar</a>
        </li>
      " } )
    </ul>
    <form method='post' action='limpiar'>
      <button>Borrar todo</button>
    </form>
  </div>

</body>
</html>

")
