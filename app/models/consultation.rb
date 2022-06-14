class Consultation < ApplicationRecord
  belongs_to :doctor, class_name: "User"
  belongs_to :patient, class_name: "User"
  # require 'tod'

  # serialize :tod_attribute, Tod::TimeOfDay

end
