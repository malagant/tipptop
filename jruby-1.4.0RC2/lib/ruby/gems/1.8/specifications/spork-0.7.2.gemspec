# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spork}
  s.version = "0.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Harper"]
  s.date = %q{2009-09-24}
  s.default_executable = %q{spork}
  s.description = %q{A forking Drb spec server}
  s.email = ["timcharper+spork@gmail.com"]
  s.executables = ["spork"]
  s.extra_rdoc_files = ["MIT-LICENSE", "README.rdoc"]
  s.files = ["MIT-LICENSE", "README.rdoc", "assets/bootstrap.rb", "features/cucumber_rails_integration.feature", "features/diagnostic_mode.feature", "features/rails_delayed_loading_workarounds.feature", "features/rspec_rails_integration.feature", "features/spork_debugger.feature", "features/steps/general_steps.rb", "features/steps/rails_steps.rb", "features/steps/sandbox_steps.rb", "features/support/background_job.rb", "features/support/env.rb", "features/unknown_app_framework.feature", "geminstaller.yml", "lib/spork.rb", "lib/spork/app_framework.rb", "lib/spork/app_framework/rails.rb", "lib/spork/app_framework/rails_stub_files/application.rb", "lib/spork/app_framework/rails_stub_files/application_controller.rb", "lib/spork/app_framework/rails_stub_files/application_helper.rb", "lib/spork/app_framework/unknown.rb", "lib/spork/custom_io_streams.rb", "lib/spork/diagnoser.rb", "lib/spork/ext/ruby-debug.rb", "lib/spork/forker.rb", "lib/spork/run_strategy.rb", "lib/spork/run_strategy/forking.rb", "lib/spork/runner.rb", "lib/spork/server.rb", "lib/spork/test_framework.rb", "lib/spork/test_framework/cucumber.rb", "lib/spork/test_framework/rspec.rb", "spec/spec_helper.rb", "spec/spork/app_framework/rails_spec.rb", "spec/spork/app_framework/unknown_spec.rb", "spec/spork/app_framework_spec.rb", "spec/spork/diagnoser_spec.rb", "spec/spork/forker_spec.rb", "spec/spork/run_strategy/forking_spec.rb", "spec/spork/runner_spec.rb", "spec/spork/server_spec.rb", "spec/spork/test_framework/cucumber_spec.rb", "spec/spork/test_framework/rspec_spec.rb", "spec/spork/test_framework_spec.rb", "spec/spork_spec.rb", "spec/support/fake_framework.rb", "spec/support/fake_run_strategy.rb", "bin/spork"]
  s.homepage = %q{http://github.com/timcharper/spork}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{spork}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{spork}
  s.test_files = ["spec/spec_helper.rb", "spec/spork/app_framework/rails_spec.rb", "spec/spork/app_framework/unknown_spec.rb", "spec/spork/app_framework_spec.rb", "spec/spork/diagnoser_spec.rb", "spec/spork/forker_spec.rb", "spec/spork/run_strategy/forking_spec.rb", "spec/spork/runner_spec.rb", "spec/spork/server_spec.rb", "spec/spork/test_framework/cucumber_spec.rb", "spec/spork/test_framework/rspec_spec.rb", "spec/spork/test_framework_spec.rb", "spec/spork_spec.rb", "spec/support/fake_framework.rb", "spec/support/fake_run_strategy.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
