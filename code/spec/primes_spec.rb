require "primes"

describe "prime numbers" do
  it "should not crash when passing a nil" do
    pending
    primes_up_to(nil).should throw ArgumentError
  end

  it "should not crash when passing -1" do
    primes_up_to(-1).should == []
  end

  it "primes don't contain 1" do
    primes_up_to(1).should == []
  end

  it "should include 2" do
    primes_up_to(2).should == [2]
  end

  it "should include 3" do
    primes_up_to(3).should == [2, 3]
  end

  it "should not include 4" do
    primes_up_to(4).should == [2, 3]
  end

  it "should include be [2, 3, 5]" do
    primes_up_to(5).should == [2, 3, 5]
  end

  it "up to 20 should be [2, 3, 5, 7, 11, 13, 17, 19]" do
    primes_up_to(20).should == [2, 3, 5, 7, 11, 13, 17, 19]
  end
end