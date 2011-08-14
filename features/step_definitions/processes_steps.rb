Given /^A process this is running in$/ do
  #if we get here, it's true
  @self_status = TLPI::Proc::Process.new
end

Then /^the brave programmer can determine the pid$/ do
  #pid will be greater than init's of 1
  TLPI::Six.getpid.should > 1
end

Then /^the brave programmer can determine the ppid$/ do
  #ppiid will be greater than init's of 1
  TLPI::Six.getppid.should > 1
end

