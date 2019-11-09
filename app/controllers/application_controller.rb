class ApplicationController < ActionController::Base
  before_action :data

  def data
    @today = Date.today
    @thisweek = @today.cweek
    @records = Record.all
    @users = User.all

    @start_time = @records.last[:start_time]
  end

  private

  def set_locale
    I18n.locale = current_user&.locale || :ja
  end
end
