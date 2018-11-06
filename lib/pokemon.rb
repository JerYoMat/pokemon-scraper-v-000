require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type 
    @db = db 
  end 

  def self.save (breed, age, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
  end 

end
