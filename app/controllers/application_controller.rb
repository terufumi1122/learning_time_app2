class ApplicationController < ActionController::Base
  before_action :data

  def data
    @today = Date.today
    @records = Record.all
    @users = User.all

    @start_time = @records.last[:start_time]
    @daily_records = @records.where(created_at: @today.all_day)

    @daily_total = @records.where(created_at: @today.all_day).sum(:lap_time) /60
    @weekly_total = @records.where(created_at: @today.all_week).sum(:lap_time) /60
    @monthly_total = @records.where(created_at: @today.all_month).sum(:lap_time) /60
    @grand_total = @records.sum(:lap_time) / 60
  end


  private

  def set_locale
    I18n.locale = current_user&.locale || :ja
  end
end
