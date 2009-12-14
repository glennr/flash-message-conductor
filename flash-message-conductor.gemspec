# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name                      = %q{glennr-flash-message-conductor}
  s.version                   = "1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors                   = ["Robby Russell", "Glenn Roberts"]
  s.date                      = %q{2009-12-14}
  s.description               = %q{A simple pattern for managing flash messages in your Ruby on Rails application}
  s.email                     = %q{robby@planetargon.com, glenn.roberts@siyelo.com}
  s.files                     = [
    "VERSION.yml",
    "lib/flash_message_conductor.rb",
    "rails/init.rb",
    "README.md",
    "MIT-LICENSE",
    "examples/examples.sass",
    "examples/images/flash-error-icon.png",
    "examples/images/flash-info-icon.png",
    "examples/images/flash-success-icon.png",
    "examples/images/flash-warning-icon.png"
  ]
  s.homepage                  = %q{http://github.com/glennr/flash-message-conductor}
  s.rdoc_options              = ["--inline-source", "--charset=UTF-8"]
  s.require_paths             = ["lib"]
  s.rubygems_version          = %q{1.3.5}
  s.summary                   = %q{Conduct your Flash Messages in Rails}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

"examples/images/flash-error-icon.png", "examples/images/flash-info-icon.png", "examples/images/flash-success-icon.png", "examples/images/flash-warning-icon.png"