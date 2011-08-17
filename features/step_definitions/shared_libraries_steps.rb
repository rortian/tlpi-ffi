When /^I open a shared library$/ do
  @pointer  = TLPI::FortyTwo.dlopen("libxml2.so",TLPI::FortyTwo::RTLD_LAZY)
end

Then /^I should still be okay$/ do
  @pointer.should be
  TLPI::FortyTwo.dlerror.should be_nil
end

