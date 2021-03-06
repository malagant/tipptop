# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{session}
  s.version = "2.4.0"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Ara T. Howard"]
  s.autorequire = %q{session}
  s.cert_chain = nil
  s.date = %q{2005-11-13}
  s.email = %q{ara.t.howard@noaa.gov}
  s.files = ["lib/session.rb", "lib/session-2.4.0.rb", "test/session.rb"]
  s.homepage = %q{http://codeforpeople.com/lib/ruby/session/}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{session}
  s.test_files = ["test/session.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
