class Dog
  attr_accessor :id, :name, :breed
  def initialize (id:nil, name:, breed:)
    @id=id
    @name=name
    @breed=breed
  end
  def self.create_table
    DB[:conn].execute("CREATE TABLE dogs (id INTEGER PRIMARY KEY, name TEXT, breed TEXT)")
  end
  def self.drop_table
    DB[:conn].execute("DROP TABLE dogs")
  end
end
