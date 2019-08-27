class Specialization < ApplicationRecord
  # Direct associations

  belongs_to :specialty,
             :counter_cache => true

  belongs_to :professional,
             :counter_cache => true

  # Indirect associations

  # Validations

end
