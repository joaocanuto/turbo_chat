class Room < ApplicationRecord
    validatates_uniqueness_of :name
    scope :public_rooms, -> { where(is_private: false) }
end
