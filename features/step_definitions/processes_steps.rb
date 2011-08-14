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

