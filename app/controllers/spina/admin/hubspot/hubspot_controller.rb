module Spina::Admin::Hubspot
  class HubspotController < AdminController
    before_action :set_breadcrumb
    before_action :set_locale
    before_action :set_tabs, only: [:new, :create, :edit, :update]

    layout 'spina/admin/hubspot'

    private def set_locale
      @locale = params[:locale] || I18n.default_locale
    end

    private def set_breadcrumb
      raise 'Breadcrumb not set in controller'
    end

    private def set_tabs
      @tabs = %w{block_content advanced_content}
    end

    private def block_params
      params.require(:block).permit!.merge(locale: params[:locale] || I18n.default_locale)
    end

    private def new_block_templates
      current_theme.content_block_templates.map do |view_template|
        [view_template[:name], view_template[:title], view_template[:description], view_template[:usage]]
      end.compact
    end
  end
end
