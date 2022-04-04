class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :consultations_as_doctor, class_name: "Consultation", foreign_key: :doctor_id
  has_many :consultations_as_patient, class_name: "Consultation", foreign_key: :patient_id

  has_many :messages_as_asker, class_name: "Message", foreign_key: :asker_id
  has_many :messages_as_receiver, class_name: "Message", foreign_key: :receiver_id

  has_many :announcements
end
