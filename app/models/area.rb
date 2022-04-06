class Area < ApplicationRecord
    has_many :programas, dependent: :destroy
end
