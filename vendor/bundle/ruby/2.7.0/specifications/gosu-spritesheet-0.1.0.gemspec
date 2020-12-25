# -*- encoding: utf-8 -*-
# stub: gosu-spritesheet 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gosu-spritesheet".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/pogist/gosu-spritesheet", "source_code_uri" => "https://github.com/pogist/gosu-spritesheet" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["pogist".freeze]
  s.date = "2019-02-28"
  s.description = "A useful and yet simple spritesheet extension for Gosu.".freeze
  s.email = ["murilo.paixao.2@gmail.com".freeze]
  s.homepage = "https://github.com/pogist/gosu-spritesheet".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Useful spritesheet extension for Gosu.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<gosu>.freeze, ["~> 0.14"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.17"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<byebug>.freeze, ["~> 10.0"])
  else
    s.add_dependency(%q<gosu>.freeze, ["~> 0.14"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.17"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.3"])
    s.add_dependency(%q<byebug>.freeze, ["~> 10.0"])
  end
end
