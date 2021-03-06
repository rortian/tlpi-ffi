When /^I call malloc$/ do
  @returned = TLPI::Seven.malloc 1024
end

Then /^I get a pointer$/ do
  @returned.should be
  @returned.instance_of?(FFI::Pointer).should be
end

Then /^I can call free on it$/ do
  TLPI::Seven.free @returned
end

