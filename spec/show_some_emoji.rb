describe 'some tests to show off the magic!' do
  # generate many passes!
  50.times do |i|
    it "passes with #{i}" do
      100.should == 100
    end
  end

  # generate some failures!
  2.times do |i|
    it "fails, since #{i} is not #{i + 1}" do
      i.should == i + 1
    end
  end

  it 'skips things!!' do
    pending "don't care!"
  end
end
