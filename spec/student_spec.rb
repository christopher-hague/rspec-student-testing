require './student'

describe Student do

  before(:all) do
    @tommy = Student.new({
      name: "Tommy",
      true_pal: true,
      clique: "cool kids",
      teacher: "Wroble",
      homeroom: 212,
      intelligence: 7
    })

    @danny = Student.new({
      name: "Danny",
      true_pal: false,
      clique: "smart kids",
      teacher: "Jentzen",
      homeroom: 211,
      intelligence: 10
    })
  end

  context "When testing the Student class" do

    describe "#initialize" do

      it "can initialize a Student" do
        expect(@tommy).to be_instance_of(Student)
        expect(@danny).to be_instance_of(Student)
      end

      it "should initialize a student with a name" do
        expect(@danny.name).to be_instance_of(String)
        expect(@danny.name).to eq("Danny")
      end

      it "should initialize with a true pal status" do
        expect(@tommy.true_pal).to be_instance_of(TrueClass)
        expect(@danny.true_pal).to be_instance_of(FalseClass)
      end

      it "should initialize with a clique" do
        expect(@tommy.clique).to be_instance_of(String)
        expect(@danny.clique).to eq("smart kids")
      end

      it "should initialize with a teacher" do
        expect(@danny.teacher).to be_instance_of(String)
        expect(@tommy.teacher).to eq("Wroble")
      end

      it "should initialize with a homeroom" do
        expect(@danny.homeroom).to be_instance_of(Fixnum)
        expect(@tommy.homeroom).to eq(212)
      end

    end

    describe "#list_friends" do
      it "should list all students who are true pals of Mikey's" do
        expect(Student.list_friends).to eq([@tommy])
      end
    end

    describe "#now_friends" do
      it "should change true pal status to true if true pal status is false" do
        expect(@danny.true_pal).to eq(false)
        @danny.now_friends
        expect(@danny.true_pal).to eq(true)
      end
    end

    describe "#had_fight" do
      it "should change true pal status to false if true pal status is true" do
        expect(@tommy.true_pal).to eq(true)
        @tommy.had_fight
        expect(@tommy.true_pal).to eq(false)
      end
    end

    describe "#list_nerds" do
      it "should list all students with an intelligence of 9 or greater" do
        expect(Student.list_nerds).to eq([@danny])
      end
    end

    describe "#list_classmates" do
      it "should list all students with the same homeroom as Mikey" do
        expect(Student.list_classmates(212)).to eq([@tommy])
      end
    end

  end
end
