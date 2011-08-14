Given /^A process this is running in$/ do
  #if we get here, it's true
end

Then /^the brave programmer can determine the pid$/ do
  #pid will be greater than init's of 1
  TLPI::Six.getpid.should > 1
end

Then /^the brave programmer can determine the ppid$/ do
    pending # express the regexp above with the code you wish you had
end

