import "bialet" for Request, Response, Db

Db.query("DELETE FROM regalos WHERE id = ?", [Request.get("regalo")])
Response.redirect("/")
