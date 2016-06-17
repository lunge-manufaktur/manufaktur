# == Schema Information
#
# Table name: api_keys
#
#  id         :integer          not null, primary key
#  key        :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class ApiKeyTest < ActiveSupport::TestCase

  def api_key
    @api_key ||= ApiKey.new
  end

  def test_valid
    assert api_key.valid?
  end

end
