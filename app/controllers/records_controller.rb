class RecordsController < ApplicationController

  # LINE Notify用に定数を定義し、freezeで変更不可とする
  URL = 'https://notify-api.line.me/api/notify'.freeze
  TOKEN = ENV['LINE_NOTIFY_TOKEN'].freeze

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

  def line_notify
    # HTTPClientを読み込む
    require 'httpclient'

    # httpclientを使ってリクエストを作成する
    client = HTTPClient.new
    # URIを指定
    uri = URI.parse(URL)

    # LINE Notify指定のリクエストヘッダを指定
    header = {
      "Content-type" => "multipart/form-data",
      "Authorization" => "Bearer #{TOKEN}"
    }

    # 表示するメッセージをクエリとして代入
    query = {
      "message" => <<~"EOS"

      #{@today}
      Daily total: #{@daily_total}min.
      Weekly total: #{@weekly_total}min.
      Monthly total: #{@monthly_total}min.
      Grand total: #{@grand_total}min.
      EOS
    }
    # POSTリクエストを作成し、レスポンスを`res`に代入
    client.post(uri, query, header)

    redirect_to root_path
  end
end
