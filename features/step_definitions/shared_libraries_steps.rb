When /^I open a shared library$/ do
  @pointer  = TLPI::FortyTwo.dlopen("libxml2.so",TLPI::FortyTwo::RTLD_LAZY)
end

Then /^I should still be okay$/ do
  @pointer.should be
  TLPI::FortyTwo.dlerror.should be_nil
end

When /^I open a fun shared library$/ do
  @pointer  = TLPI::FortyTwo.dlopen("libavahi-core.so",TLPI::FortyTwo::RTLD_LAZY)
end

Then /^I should be able to find a fun function in it$/ do
  @function_pointer = TLPI::FortyTwo.dlsym(@pointer,'avahi_s_service_browser_new')
  @function_pointer.should be
end
