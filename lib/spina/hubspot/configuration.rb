module Spina
  module Hubspot
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'HubSpot'
    self.controller = 'hubspot'
    self.description = 'HubSpot CRM Integration'
    self.spina_icon = 'pencil-outline'
    self.plugin_type = 'website_resource'
  end
end
