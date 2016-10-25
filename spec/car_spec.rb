require 'car'

describe "Car" do
  describe "attributes" do
    subject { Car.new }
    #let(:car){ Car.new }
    # before(:example) do
    #   @car = Car.new
    # end
    end
    xit "allows reading and writing for :make" do #x in front of it or describe will skip the example
      subject.make = "Test"
      expect(subject.make).to eq('Test')
    end

    it "allows reading and writing for :year" do
      skip('Another way of skiping examples')
      subject.year = 9999
      expect(subject.year).to eq(9999)
    end
    it "allows reading and writing for :color" do
      #with no argument skip
      skip
      subject.color = "foo"
      expect(subject.color).to eq("foo")
    end

    it "allows reading for :wheels" do
      #pendig should be a failing test, otherwise use skip
      #The code below pending IS evaluated not so with skip.
      pending('Not implemented yet')
      expect(subject.wheels).to eq(5)
    end

    it "allows writing for :doors" #pendig if no block given

  end

  describe ".colors" do
    let(:colors) { ['blue','black','red','green'] }
    it "returns an array of color names" do
      expect(Car.colors).to match_array(colors)
    end

  end

  describe "#full_name" do
    let(:honda) { Car.new(make: "Honda", year: 2004, color: 'blue') }
    let(:new_car) { Car.new}
    it "returns a string in the expected format" do
      expect(honda.full_name).to eq('2004 Honda (blue)')
    end

    context('when initialized with no arguments') do
      it "returns a string using default values" do
        expect(new_car.full_name).to eq('2007 Volvo (Unknown)')
      end
    end
  end

end
