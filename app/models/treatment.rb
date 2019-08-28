class Treatment < ApplicationRecord
  # Direct associations

  has_many   :notes,
             :dependent => :destroy

  has_many   :charges

  # Indirect associations

  # Validations

end
