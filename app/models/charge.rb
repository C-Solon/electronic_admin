class Charge < ApplicationRecord
  # Direct associations

  belongs_to :treatment,
             :counter_cache => true

  belongs_to :appointment,
             :counter_cache => true

  # Indirect associations

  # Validations

end
