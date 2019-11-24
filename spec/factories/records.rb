# == Schema Information
#
# Table name: records
#
#  id         :bigint           not null, primary key
#  lap_time   :integer
#  start_time :datetime
#  stop_time  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

FactoryBot.define do
  factory :record do
    start_time { "2019-11-08 20:38:17" }
    stop_time { "2019-11-08 20:38:17" }
    user_id { 1 }
  end
end
