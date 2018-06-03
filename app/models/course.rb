class Course < ApplicationRecord
  has_many :qualifications
  has_many :audio_visuals
  has_many :definitions

  include HasLineage
  has_lineage tree_key_column: "category_id"

end
