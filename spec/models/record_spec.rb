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

require 'rails_helper'

RSpec.describe Record, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
