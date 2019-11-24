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

class Record < ApplicationRecord

end
