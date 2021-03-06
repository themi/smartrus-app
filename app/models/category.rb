# == Schema Information
#
# Table name: categories
#
#  id           :bigint(8)        not null, primary key
#  grouping     :string
#  sub_grouping :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Category < ApplicationRecord
  has_many :course_headers
  has_many :courses, through: :course_headers

  def to_s
    "#{grouping}" + (sub_grouping.nil? ? "" : " - #{sub_grouping}")
  end
end
