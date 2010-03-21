require File.dirname(__FILE__) + '/../spec_helper'
    
describe Person, "when first created" do
  
  before :each do
    @person     = Person.new 
    @underling  = Person.new :name => "Mr. Low"   , :supervisor_id => 100
    @underling2 = Person.new :name => "Mz. Low"   , :supervisor_id => 100
    @bossman    = Person.new :name => "Bill Gates", :id            => 100
  end 
       
  # start of tests:  ################################# 
  
  it "should have a name" do
    @person.name = ''
    @person.should_not be_valid
  end 
  it "show have a name longer than 2 characters" do
    @person.name = 'a'
    @person.should_not be_valid
  end
  it "should allow association with manager" do 
    @underling.supervisor = @bossman
    @underling.supervisor.name.should == 'Bill Gates'
  end
  it "should be allowed overload over several underlings" do
    @bossman.underlings << @underling
    @bossman.underlings << @underling2
    @bossman.underlings.size.should == 2
  end
  it "should have a unique name" do
    @underling.save # first record needs to be saved first!
    @new_mr_low = Person.new :name => "Mr. Low" 
    @new_mr_low.should_not be_valid
  end
end