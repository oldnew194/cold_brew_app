# -*- encoding: utf-8 -*-
# stub: fog 2.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fog".freeze
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["geemus (Wesley Beary)".freeze]
  s.date = "2022-10-03"
  s.description = "The Ruby cloud services library. Supports all major cloud providers including AWS, Rackspace, Linode, Blue Box, StormOnDemand, and many others. Full support for most AWS services including EC2, S3, CloudWatch, SimpleDB, ELB, and RDS.".freeze
  s.email = "geemus@gmail.com".freeze
  s.executables = ["fog".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze, "bin/fog".freeze]
  s.homepage = "https://github.com/fog/fog".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "------------------------------\nThank you for installing fog!\n\nIMPORTANT NOTICE:\nIf there's a metagem available for your cloud provider, e.g. `fog-aws`,\nyou should be using it instead of requiring the full fog collection to avoid\nunnecessary dependencies.\n\n'fog' should be required explicitly only if the provider you use doesn't yet\nhave a metagem available.\n------------------------------\n".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.3.18".freeze
  s.summary = "brings clouds to you".freeze

  s.installed_by_version = "3.3.18" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<fog-core>.freeze, ["~> 2.1"])
    s.add_runtime_dependency(%q<fog-json>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-xml>.freeze, ["~> 0.1.1"])
    s.add_runtime_dependency(%q<json>.freeze, ["~> 2.3"])
    s.add_runtime_dependency(%q<ipaddress>.freeze, ["~> 0.5"])
    s.add_runtime_dependency(%q<fog-aliyun>.freeze, [">= 0.1.0"])
    s.add_runtime_dependency(%q<fog-atmos>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-aws>.freeze, [">= 0.6.0"])
    s.add_runtime_dependency(%q<fog-brightbox>.freeze, [">= 0.4", "< 2.0"])
    s.add_runtime_dependency(%q<fog-cloudatcost>.freeze, ["~> 0.4"])
    s.add_runtime_dependency(%q<fog-cloudstack>.freeze, ["~> 0.1.0"])
    s.add_runtime_dependency(%q<fog-digitalocean>.freeze, [">= 0.3.0"])
    s.add_runtime_dependency(%q<fog-dnsimple>.freeze, ["~> 2.1"])
    s.add_runtime_dependency(%q<fog-dynect>.freeze, [">= 0.0.2", "< 0.6.0"])
    s.add_runtime_dependency(%q<fog-ecloud>.freeze, ["~> 0.1"])
    s.add_runtime_dependency(%q<fog-google>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<fog-internet-archive>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-local>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-openstack>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-ovirt>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-powerdns>.freeze, [">= 0.1.1"])
    s.add_runtime_dependency(%q<fog-profitbricks>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-rackspace>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-radosgw>.freeze, [">= 0.0.2"])
    s.add_runtime_dependency(%q<fog-riakcs>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-sakuracloud>.freeze, [">= 0.0.4"])
    s.add_runtime_dependency(%q<fog-serverlove>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-softlayer>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-storm_on_demand>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-terremark>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-vmfusion>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-voxel>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<fog-vsphere>.freeze, [">= 0.4.0"])
    s.add_runtime_dependency(%q<fog-xenserver>.freeze, [">= 0"])
    s.add_development_dependency(%q<docker-api>.freeze, [">= 1.13.6"])
    s.add_development_dependency(%q<fission>.freeze, [">= 0"])
    s.add_development_dependency(%q<mime-types>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest-stub-const>.freeze, [">= 0"])
    s.add_development_dependency(%q<opennebula>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rbvmomi>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 1.28.2"])
    s.add_development_dependency(%q<shindo>.freeze, ["~> 0.3.4"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<thor>.freeze, [">= 0"])
    s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-core>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-expectations>.freeze, [">= 0"])
    s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.18.1"])
  else
    s.add_dependency(%q<fog-core>.freeze, ["~> 2.1"])
    s.add_dependency(%q<fog-json>.freeze, [">= 0"])
    s.add_dependency(%q<fog-xml>.freeze, ["~> 0.1.1"])
    s.add_dependency(%q<json>.freeze, ["~> 2.3"])
    s.add_dependency(%q<ipaddress>.freeze, ["~> 0.5"])
    s.add_dependency(%q<fog-aliyun>.freeze, [">= 0.1.0"])
    s.add_dependency(%q<fog-atmos>.freeze, [">= 0"])
    s.add_dependency(%q<fog-aws>.freeze, [">= 0.6.0"])
    s.add_dependency(%q<fog-brightbox>.freeze, [">= 0.4", "< 2.0"])
    s.add_dependency(%q<fog-cloudatcost>.freeze, ["~> 0.4"])
    s.add_dependency(%q<fog-cloudstack>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<fog-digitalocean>.freeze, [">= 0.3.0"])
    s.add_dependency(%q<fog-dnsimple>.freeze, ["~> 2.1"])
    s.add_dependency(%q<fog-dynect>.freeze, [">= 0.0.2", "< 0.6.0"])
    s.add_dependency(%q<fog-ecloud>.freeze, ["~> 0.1"])
    s.add_dependency(%q<fog-google>.freeze, ["~> 1.0"])
    s.add_dependency(%q<fog-internet-archive>.freeze, [">= 0"])
    s.add_dependency(%q<fog-local>.freeze, [">= 0"])
    s.add_dependency(%q<fog-openstack>.freeze, [">= 0"])
    s.add_dependency(%q<fog-ovirt>.freeze, [">= 0"])
    s.add_dependency(%q<fog-powerdns>.freeze, [">= 0.1.1"])
    s.add_dependency(%q<fog-profitbricks>.freeze, [">= 0"])
    s.add_dependency(%q<fog-rackspace>.freeze, [">= 0"])
    s.add_dependency(%q<fog-radosgw>.freeze, [">= 0.0.2"])
    s.add_dependency(%q<fog-riakcs>.freeze, [">= 0"])
    s.add_dependency(%q<fog-sakuracloud>.freeze, [">= 0.0.4"])
    s.add_dependency(%q<fog-serverlove>.freeze, [">= 0"])
    s.add_dependency(%q<fog-softlayer>.freeze, [">= 0"])
    s.add_dependency(%q<fog-storm_on_demand>.freeze, [">= 0"])
    s.add_dependency(%q<fog-terremark>.freeze, [">= 0"])
    s.add_dependency(%q<fog-vmfusion>.freeze, [">= 0"])
    s.add_dependency(%q<fog-voxel>.freeze, [">= 0"])
    s.add_dependency(%q<fog-vsphere>.freeze, [">= 0.4.0"])
    s.add_dependency(%q<fog-xenserver>.freeze, [">= 0"])
    s.add_dependency(%q<docker-api>.freeze, [">= 1.13.6"])
    s.add_dependency(%q<fission>.freeze, [">= 0"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-stub-const>.freeze, [">= 0"])
    s.add_dependency(%q<opennebula>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rbvmomi>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 1.28.2"])
    s.add_dependency(%q<shindo>.freeze, ["~> 0.3.4"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-core>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-expectations>.freeze, [">= 0"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.18.1"])
  end
end
