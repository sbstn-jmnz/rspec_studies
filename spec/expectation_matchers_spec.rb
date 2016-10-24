describe "Expectation Matchers" do

  describe "equivalence matchers" do
    it 'will match loose equality with #eq' do
      a = "2 cats"
      b = "2 cats"
      expect(a).to eq(b)
      expect(a).to be == b #same as #eq

      c = 17
      d = 17.0
      expect(c).to eq(d) #Different types, but "close enough"
    end

    it "will match value equality with #eql" do
      a = "2 cats"
      b = "2 cats"
      expect(a).to eql(b) #just a little stricter

      c = 17
      d = 17.0
      expect(c).not_to eql(d) #not the same
    end

    it "will match identity equality with #equal" do
    a = "2 cats"
    b = "2 cats"
    expect(a).not_to equal(b) #not same object

    c = b
    expect(c).to equal(b)
    end

  end

  describe "truthiness matchers" do

    it 'will match true/false' do
      expect(1 < 2).to be(true) #don't use 'be_true'
      expect(1 > 2).to be(false) #dont't use 'be_fase'

      expect('foo').not_to be(true) #the string is not exactly true
      expect(nil).not_to be(false) #nil is not exactly false
      expect(0).not_to be(false)#0 is not exactly false

    end

    it 'will match truthy/falsey' do
      expect(1 < 2 ).to be_truthy
      expect(1 > 2).to be_falsey

      expect('foo').to be_truthy #any value counts as true
      expect(nil).to be_falsey #nil counts as false
      expect(0).not_to be_falsey #but 0 is still not falsey enough
    end

    it 'will match nill' do
      expect(nil).to be_nil
      expect(nil).to be(nil) #either way works
      expect(false).not_to be_nil #nil only, just like #nil?
      expect(0).not_to be_nil  #nil only, just like #nil?

    end
  end

end
