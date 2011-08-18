When /^I open a shared library$/ do
  @pointer  = TLPI::FortyTwo.dlopen("libxml2.so",TLPI::FortyTwo::RTLD_LAZY)
end

Then /^I should still be okay$/ do
  @pointer.should be
  TLPI::FortyTwo.dlerror.should be_nil
end

When /^I open a fun shared library$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should be able to find a fun function in it$/ do
    pending # express the regexp above with the code you wish you had
end
