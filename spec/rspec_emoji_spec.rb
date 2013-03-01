describe 'my amazing tests' do
  # generate many hearts!
  50.times do |i|
    it "must #{i}" do
      100.should == 100
    end
  end

  # generate some poops!
  2.times do |i|
    it "compares #{i} to #{i + 1}" do
      i.should == i + 1
    end
  end

  it 'skips things!!' do
    pending "don't care!"
  end
end
