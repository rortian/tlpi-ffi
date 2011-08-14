Given /^A process this is running in$/ do
  #if we get here, it's true
  @self_status = TLPI::Proc::Process.new
end

Then /^the brave programmer can determine the pid$/ do
  #pid will be greater than init's of 1
  TLPI::Six.getpid.should > 1
  TLPI::Six.getpid.should == @self_status.pid
end

Then /^the brave programmer can determine the ppid$/ do
  #ppiid will be greater than init's of 1
  TLPI::Six.getppid.should > 1
  TLPI::Six.getppid.should == @self_status.ppid
end

When /^I ask for an enviroment variable "([^"]*)" via getenv$/ do |var|
  @genenv = TLPI::Six.getenv(var)
  @genenv.should be
end

Then /^it should be the same as "([^"]*)" from the ENV hash$/ do |var|
  @genenv.should == ENV[var]
end

When /^I get the environ pointer$/ do
  @environ = TLPI::Six.environ
  @environ.should be
end

Then /^I have a pointer that I can get all the environ strings$/ do
  @strings = @environ.get_array_of_string(0)
  @strings.size > 0
end

Then /^that should contain the same information as the ENV hash$/ do
  @strings.size.should == ENV.size
  @strings.collect {|s| s.split('=') }.each do |(k,*v)|
    v = v.join '='
    v.should == ENV[k]
  end
end

