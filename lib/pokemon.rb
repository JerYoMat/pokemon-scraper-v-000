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

     t = database_connection.execute("SELECT name from pokemon  Where id=1")
     binding.pry 
  end 

end
