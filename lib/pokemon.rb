class Pokemon
  attr_accessor :id, :name, :type, :db
<<<<<<< HEAD
  require "pry"
  def initialize (hash)
    @id = hash[:id]
    @name = hash[:name]
    @type = hash[:type]
    @db = hash[:db]
=======
  
  def initialize (hash)
    @id = id
    @name = name
    @type = type
    @db = db
>>>>>>> 51d625908794c5dad48e8c012cb923598988c482
  end
  
  def self.save(name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, database_connection)
    found_pokemon = database_connection.execute("SELECT * FROM pokemon WHERE id = ?;", id).flatten
    Pokemon.new(id: found_pokemon[0], name: found_pokemon[1], type: found_pokemon[2], db: database_connection)
<<<<<<< HEAD
=======

>>>>>>> 51d625908794c5dad48e8c012cb923598988c482
  end

end
