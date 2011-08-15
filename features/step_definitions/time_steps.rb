When /^I call gettimeofday$/ do
  @time_struct = TLPI::Ten::Timeval.new
  @time_status = TLPI::Ten.gettimeofday @time_struct,nil
  @ruby_time = Time.now.to_i
end

Then /^I should know what time it is$/ do
  comparison = @time_struct[:tv_sec] - @ruby_time
  comparison.should < 2
  @time_struct[:tv_usec].should be
end

When /^I call time$/ do
  @time = TLPI::Ten.time nil
  @ruby_time = Time.now.to_i
end

Then /^I should know the time$/ do
  (@time - @ruby_time).should < 2
end

Given /^I have a pointer to a time returned by time$/ do
  @time_pointer = FFI::MemoryPointer.new(:size_t).write_ulong(TLPI::Ten::time nil)
end

Then /^I should have a string to look at when I call ctime$/ do
  @result = TLPI::Ten.ctime @time_pointer
  @ruby_ctime = Time.now.ctime 
  @result.should =~ /#{@ruby_ctime}/
end

Then /^I should have time broken up when I call gmtime$/ do
  @returned = TLPI::Ten.gmtime @time_pointer
  tm = TLPI::Ten::Tm.new @returned
  tm_sec = tm[:tm_sec]
  require 'pry'
  binding.pry
end

