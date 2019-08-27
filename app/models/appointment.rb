class Appointment < ApplicationRecord
  # Direct associations

  belongs_to :professional,
             :counter_cache => true

  # Indirect associations

  # Validations

end
