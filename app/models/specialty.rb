class Specialty < ApplicationRecord
  # Direct associations

  has_many   :specializations,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
