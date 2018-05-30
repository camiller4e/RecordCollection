require('pg')
require_relative('../db/sql_runner')
require_relative('album')

class Artist

  attr_reader :id, :name

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i

  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]['id']
  end

  def edit()
    sql = "UPDATE artists SET (name) = ($1)"
    values = [@name]
    SqlRunner.run(sql, values)
  end

  def album()
    sql = "SELECT * FROM albums WHERE artist_id = $1"
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map {|album| Album.new(album)}
  end

  def self.all()
    sql = "SELECT * FROM artists"
    result = SqlRunner.run(sql)
    return result.map {|artist| Artist.new(artist)}
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

end
