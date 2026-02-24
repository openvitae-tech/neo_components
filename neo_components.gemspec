# frozen_string_literal: true

require_relative "lib/neo_components/version"

Gem::Specification.new do |spec|
  spec.name        = "neo_components"
  spec.version     = NeoComponents::VERSION
  spec.authors     = ["Blackboard LMS"]
  spec.email       = [""]
  spec.homepage    = ""
  spec.summary     = "Reusable UI component library for Rails applications"
  spec.description = "Provides ViewComponent helpers, ERB partials, Tailwind CSS styles, SVG icons, and Stimulus controllers."
  spec.license     = "MIT"

  spec.files = Dir[
    "lib/**/*",
    "app/**/*",
    "config/**/*",
    "LICENSE",
    "README.md"
  ]

  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 7.0"
  spec.add_dependency "sprockets-rails"
  spec.add_dependency "nokogiri"
  spec.add_dependency "importmap-rails"
end
