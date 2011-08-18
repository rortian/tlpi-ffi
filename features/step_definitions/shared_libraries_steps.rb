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

When /^I open a really sweet library$/ do
  @pointer  = TLPI::FortyTwo.dlopen("libcairo.so",TLPI::FortyTwo::RTLD_LAZY)
  @function_pointer = TLPI::FortyTwo.dlsym(@pointer,'cairo_svg_surface_create_for_stream')
end

Then /^I should know scary amounts of stuff about it$/ do
  @info = TLPI::FortyTwo::DlInfo.new
  TLPI::FortyTwo.dladdr @function_pointer,@info
  @info[:dli_fname].should be
  @info[:dli_fbase].should be
  @info[:dli_sname].should be
  @info[:dli_saddr].should be
end
