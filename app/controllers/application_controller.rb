class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def search search, objects
    if search
      object = objects.find_by code: search
      if object
        objects.where(code: search).paginate page: params[:page],
         per_page: Settings.per_page.long
      else
        objects.paginate page: params[:page], per_page:
          Settings.per_page.long
      end
    else
      objects.paginate page: params[:page], per_page:
        Settings.per_page.long
    end
  end
end
