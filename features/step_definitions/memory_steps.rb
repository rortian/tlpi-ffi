When /^I call malloc$/ do
  @returned = TLPI::Seven.malloc 1024
  require 'pry'
  binding.pry
end

Then /^I get a pointer$/ do
    pending # express the regexp above with the code you wish you had
end

