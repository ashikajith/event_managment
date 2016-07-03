class Event < ApplicationRecord

geocoded_by :venue
# auto-fetch coordinates and the condition is for preventing fetching the same venue more than once
after_validation :geocode, if: :venue_changed?
end
