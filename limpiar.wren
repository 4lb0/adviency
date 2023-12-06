import "bialet" for Request, Response, Db

if (Request.isPost()) {
  Db.query("DELETE FROM regalos")
}
Response.redirect("/")

