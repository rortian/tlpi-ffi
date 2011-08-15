When /^I call to gettimeofday$/ do
  @time_struct = TLPI::Ten::Timeval.new
  @time_status = TLPI::Ten.gettimeofday @time_struct,nil
end

Then /^I should know what time it is$/ do
    pending # express the regexp above with the code you wish you had
end
