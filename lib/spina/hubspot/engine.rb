require 'spina'

module Spina
  module Hubspot
    class Engine < ::Rails::Engine
      isolate_namespace Spina::Hubspot

      initializer "register plugin" do
        ::Spina::Plugin.register do |plugin|
          plugin.name = 'hubspot'
          plugin.namespace = 'hubspot'
        end
      end

      config.generators do |g|
        g.test_framework :rspec, fixture: false
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.assets false
        g.helper false
      end
    end
  end
end
