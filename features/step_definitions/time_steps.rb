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
  @time = TLPI::Ten::time nil
  @ruby_time = Time.now.to_i
end

Then /^I should know the time$/ do
  (@time - @ruby_time).should < 2
end

Given /^I have a pointer to a time returned by time$/ do
  require 'pry'
  binding.pry
  @time_pointer = FFI::MemoryPointer.new(:size_t).write_size_t(TLPI::Ten::time nil)
end

Then /^I should have a string to look at when I call ctime$/ do
    pending # express the regexp above with the code you wish you had
end

