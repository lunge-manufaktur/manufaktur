# == Schema Information
#
# Table name: work_steps
#
#  id         :integer          not null, primary key
#  name       :string
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  final_step :boolean          default(FALSE)
#

require "test_helper"

class WorkStepTest < ActiveSupport::TestCase

  def work_step
    @work_step ||= WorkStep.new
  end

  def test_valid
    assert work_step.valid?
  end

end
