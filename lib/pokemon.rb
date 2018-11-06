require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type 
    @db = db 
  end 

  def self.save (name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end 

  def self.find(id, database_connection)

     poke = database_connection.execute("SELECT id, name, type from pokemon  Where id=#{id}")
     binding.pry 
     Pokemon.new(poke[1], poke[2], poke[3] )
  end 

end
