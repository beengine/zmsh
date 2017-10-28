class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :slugged, use: :slugged
end
