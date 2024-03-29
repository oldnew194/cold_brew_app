# -*- encoding: utf-8 -*-
# stub: fog-voxel 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fog-voxel".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Paulo Henrique Lopes Ribeiro".freeze]
  s.date = "2015-04-04"
  s.description = "This library can be used as a module for `fog` or as standalone provider\n                        to use the Voxel in applications.".freeze
  s.email = "plribeiro3000@gmail.com".freeze
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.18".freeze
  s.summary = "Module for the 'fog' gem to support Voxel.".freeze

  s.installed_by_version = "3.3.18" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<fog-core>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-xml>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<shindo>.freeze, [">= 0"])
    s.add_development_dependency(%q<turn>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
  else
    s.add_dependency(%q<fog-core>.freeze, [">= 0"])
    s.add_dependency(%q<fog-xml>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<shindo>.freeze, [">= 0"])
    s.add_dependency(%q<turn>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
