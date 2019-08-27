class Appointment < ApplicationRecord
  # Direct associations

  has_many   :charges

  belongs_to :patient,
             :counter_cache => true

  belongs_to :office,
             :counter_cache => true

  belongs_to :professional,
             :counter_cache => true

  # Indirect associations

  # Validations

end
