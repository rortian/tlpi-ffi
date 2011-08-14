
When /^I look at \/proc\/self\/status$/ do
  @self_status.should be
end

Then /^I should have some info about myself$/ do
    pending # express the regexp above with the code you wish you had
end

