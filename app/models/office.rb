class Office < ApplicationRecord
  mount_uploader :logo, LogoUploader

  # Direct associations

  has_many   :work_relationships,
             :dependent => :destroy

  has_many   :appointments,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
