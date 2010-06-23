# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{outside-in}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Doug Petkanics"]
  s.date = %q{2010-06-23}
  s.description = %q{The Outside.IN Radar API provides hyperlocal news, tweets, and commentary based around a given latitude and longitude. This is a ruby wrapper around that API.}
  s.email = %q{petkanics@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    "LICENSE",
     "README",
     "VERSION",
     "lib/outside_in.rb",
     "lib/outside_in/place.rb",
     "lib/outside_in/radar.rb",
     "lib/outside_in/story.rb",
     "lib/outside_in/tag.rb",
     "lib/outside_in/tweet.rb"
  ]
  s.homepage = %q{http://github.com/dob/outsidein}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ruby wrapper on the Outside.In API}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
