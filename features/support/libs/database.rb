require "pg"

class Database
  def delete_movie(title)
    connection = PG.connect(host: "http://localhost:15432", dbname: "nflix", user:"postgres", password: "qaninja")
    connect.exec("DELETE from public.movies where title = '#{title}';")
  end
end