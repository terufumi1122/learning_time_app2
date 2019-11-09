class RecordsController < ApplicationController
  def index
  end

  def show
  end

  def new
    new_record = Record.new(start_time: Time.now)
    new_record.save
  end

  def edit
  end

  def stop
    last_record = @records.last
    last_record[:stop_time] = Time.now
    last_record.save

    redirect_to root_path
  end
end
