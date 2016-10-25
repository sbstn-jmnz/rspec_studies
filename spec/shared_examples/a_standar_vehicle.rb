
shared_examples_for('a standar vehicle') do
  describe "attributes" do
    #when describe gets the name of the class, the subject is implicit
    #subject { Car.new }

    #use "subject" instead of "let"
    #let(:car){ Car.new }

    #Let is better than before. Before is better for makeing up the enviroment
    #like database set up
    # before(:example) do
    #   @car = Car.new
    # end
    it "allows reading and writing for :make" do #x in front of it or describe will skip the example
      subject.make = "Test"
      expect(subject.make).to eq('Test')
    end

    it "allows reading and writing for :year" do
      subject.year = 9999
      expect(subject.year).to eq(9999)
    end
    it "allows reading and writing for :color" do
      subject.color = "foo"
      expect(subject.color).to eq("foo")
    end

    it "allows reading for :wheels" do
      expect(subject.wheels).to eq(4)
    end

    it "allows writing for :doors" #pendig if no block given

  end
end
