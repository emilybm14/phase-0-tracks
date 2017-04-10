require 'sqlite3'
require 'faker'


db = SQLite3::Database.new("music_storage.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS song_info(
    id INTEGER PRIMARY KEY,
    song_name VARCHAR(255),
    artist VARCHAR(255),
  )
SQL

db.execute(create_table_cmd)

def create_song(db, name, age)
  db.execute("INSERT INTO music_storage (song_name, artist) VALUES (?, ?)", [name, age])
end

3.times do
  create_song(db, Faker::App.song, Faker::App.band)
end