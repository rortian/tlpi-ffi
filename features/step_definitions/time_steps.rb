When /^I call to gettimeofday$/ do
  @time_struct = TLPI::Ten::Timeval.new
  @time_status = TLPI::Ten.gettimeofday @time_struct,nil
  @ruby_time = Time.now.to_i
end

Then /^I should know what time it is$/ do
  comparison = @time_struct[:tv_sec] - @ruby_time
  comparison.should < 2
end
