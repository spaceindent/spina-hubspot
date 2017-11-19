require 'hubspot-ruby'

module Spina::Admin::Hubspot
  class ContactsController < HubspotController
    def show
      @contact = Hubspot::Contact.find_by_id(hubspot_params[:id].to_i)
    end

    def index
      @contacts = Hubspot::Contact.all
    end

    def new
    end

    private def set_breadcrumb
      add_breadcrumb I18n.t('spina.hubspot.contacts.title'), spina.admin_pages_path
    end

    private def hubspot_params
      params.permit(:id)
    end
  end
end
