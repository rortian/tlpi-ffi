When /^I open a shared library$/ do
  @pointer  = TLPI::FortyTwo.dlopen("xml2",TLPI::FortyTwo::RTLD_LAZY)
end

Then /^I should still be okay$/ do
  @pointer.should be
end

