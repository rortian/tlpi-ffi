
When /^I look at \/proc\/self\/status$/ do
  @self_status.should be
end

Then /^I should have some info about myself$/ do
  @self_status.name.should be
  @self_status.state.should be
  @self_status.tgid.should be
  @self_status.pid.should be
  #@self_status.ppid.should be
end

