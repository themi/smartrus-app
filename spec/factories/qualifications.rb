# == Schema Information
#
# Table name: qualifications
#
#  id               :bigint(8)        not null, primary key
#  position         :integer
#  question         :text
#  answer_reference :text
#  course_id        :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryBot.define do
  factory :qualification do
    question          { FFaker::Lorem.sentence }
    answer_reference  { FFaker::Lorem.sentence }
  end
end
