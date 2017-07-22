class Student
  attr_accessor :true_pal, :clique, :intelligence
  attr_reader :name, :teacher, :homeroom

  @@all = []

  def initialize(name, true_pal, clique, teacher, homeroom, intelligence)
    @name = name
    @true_pal = true_pal
    @clique = clique
    @teacher = teacher
    @homeroom = homeroom
    @intelligence = intelligence
    @@all << self
  end

  def now_friends
    self.true_pal = true unless self.true_pal
  end

  def had_fight
    self.true_pal = false if self.true_pal
  end

  def self.list_nerds
    @@all.select { |student| student.intelligence >= 9 }
  end

  def self.list_friends
    @@all.select { |student| student.true_pal }
  end

  def self.list_classmates(homeroom)
    @@all.select { |student| student.homeroom === homeroom }
  end

  def self.all
    @@all
  end
end
