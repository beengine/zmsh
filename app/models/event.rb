class Event < ApplicationRecord
  mount_uploader :picture, EventUploader
end
