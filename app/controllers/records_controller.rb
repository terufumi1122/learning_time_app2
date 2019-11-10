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
    last_record[:lap_time] = last_record[:stop_time] - last_record[:start_time]
    last_record.save

    redirect_to root_path
  end

  def to_min(s)
    s / 60
  end
end
