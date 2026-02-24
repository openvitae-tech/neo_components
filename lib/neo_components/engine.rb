# frozen_string_literal: true

module NeoComponents
  class Engine < ::Rails::Engine
    def self.gem_root
      Pathname.new(File.expand_path("../..", __dir__))
    end

    # Register Sprockets asset paths (icons, stylesheets, and javascript)
    initializer "neo_components.assets" do |app|
      app.config.assets.paths << Engine.gem_root.join("app/assets/stylesheets")
      app.config.assets.paths << Engine.gem_root.join("app/assets/icons")
      app.config.assets.paths << Engine.gem_root.join("app/javascript")
      app.config.assets.precompile += %w[icons.css]
    end

    # Register gem view path so partials under app/views/ are found
    initializer "neo_components.view_paths" do
      ActiveSupport.on_load(:action_controller) do
        append_view_path NeoComponents::Engine.gem_root.join("app/views")
      end
    end

    # Auto-include UiHelper into all ActionView contexts
    initializer "neo_components.include_helpers" do
      ActiveSupport.on_load(:action_view) do
        include UiHelper
      end
    end

    # Register gem's Stimulus controllers with importmap-rails
    initializer "neo_components.importmap", before: "importmap" do |app|
      if app.config.respond_to?(:importmap)
        app.config.importmap.paths << Engine.gem_root.join("config/importmap.rb")
        app.config.importmap.cache_sweepers << Engine.gem_root.join("app/javascript")
      end
    end
  end
end
