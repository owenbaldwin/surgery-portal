class Message < ApplicationRecord
  belongs_to :asker
  belongs_to :receiver
end
