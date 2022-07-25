# -*- encoding: utf-8 -*-
# stub: jekyll-theme-yat 1.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-theme-yat".freeze
  s.version = "1.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "plugin_type" => "theme" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["jeffreytse".freeze]
  s.date = "2021-06-28"
  s.email = ["jeffreytse.mail@gmail.com".freeze]
  s.homepage = "https://github.com/jeffreytse/jekyll-theme-yat".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.18".freeze
  s.summary = "Yet another theme for elegant writers with modern flat style and beautiful night/dark mode.".freeze

  s.installed_by_version = "3.3.18" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.6", "< 3.0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 12.0", "< 13.0"])
    s.add_runtime_dependency(%q<jekyll>.freeze, ["> 3.5", "< 5.0"])
    s.add_runtime_dependency(%q<jekyll-feed>.freeze, ["~> 0.9"])
    s.add_runtime_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.1"])
    s.add_runtime_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.3"])
    s.add_runtime_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<jekyll-spaceship>.freeze, ["~> 0.2"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.6", "< 3.0"])
    s.add_dependency(%q<rake>.freeze, [">= 12.0", "< 13.0"])
    s.add_dependency(%q<jekyll>.freeze, ["> 3.5", "< 5.0"])
    s.add_dependency(%q<jekyll-feed>.freeze, ["~> 0.9"])
    s.add_dependency(%q<jekyll-seo-tag>.freeze, ["~> 2.1"])
    s.add_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.3"])
    s.add_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_dependency(%q<jekyll-spaceship>.freeze, ["~> 0.2"])
  end
end
