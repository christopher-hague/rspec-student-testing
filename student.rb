class Student
  attr_accessor :true_pal, :clique, :intelligence
  attr_reader :name, :teacher, :homeroom

  @@all = []

  def initialize(student_info)
    @name = student_info[:name]
    @true_pal = student_info[:true_pal]
    @clique = student_info[:clique]
    @teacher = student_info[:teacher]
    @homeroom = student_info[:homeroom]
    @intelligence = student_info[:intelligence]
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
