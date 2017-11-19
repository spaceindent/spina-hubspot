module Spina::Admin::Hubspot
  class EventsController < HubspotController
    def index

    end

    private def set_breadcrumb
      add_breadcrumb I18n.t('spina.hubspot.events.title'), spina.admin_pages_path
    end
  end
end
