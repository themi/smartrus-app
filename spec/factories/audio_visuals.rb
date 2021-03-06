# == Schema Information
#
# Table name: audio_visuals
#
#  id             :bigint(8)        not null, primary key
#  position       :integer
#  purpose        :string
#  description    :string
#  source_url     :string
#  imageable_id   :integer
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :audio_visual do
    source_url  { FFaker::Internet.uri("HTTPS") + "/" + FFaker::Youtube.url }
    purpose     { AudioVisual::AV_PURPOSES.sample }
    description { FFake::Lorem.paragraph }
    imageable   { create(:course) }
  end
end
