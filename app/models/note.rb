class Note < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :treatment,
             :counter_cache => true

  # Indirect associations

  # Validations

end
