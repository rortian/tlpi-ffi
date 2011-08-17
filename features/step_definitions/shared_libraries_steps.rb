When /^I open a shared library$/ do
  TLPI::FortyTwo.dlopen("xml2",TLPI::FortyTwo::RTLD_LAZY)
end

Then /^I should still be okay$/ do
    pending # express the regexp above with the code you wish you had
end

