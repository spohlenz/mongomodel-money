require "mongomodel/money"
require "active_support/all"

describe Money do
  it "converts to mongo representation" do
    Money.new(123).to_mongo.should == 123
  end

  it "loads from mongo representation" do
    Money.from_mongo(456).should == Money.new(456)
  end

  it "casts to Money" do
    Money.cast("$7.89").should == Money.new(789)
    Money.cast("99.9").should == Money.new(9990)
    Money.cast(1234).should == Money.new(123400)
    Money.cast("").should be_nil
    Money.cast(Money.new(123)).should == Money.new(123)
  end
  
  context "when zero" do
    subject { Money.new(0) }
    
    it { should be_blank }
    it { should_not be_present }
  end
end
