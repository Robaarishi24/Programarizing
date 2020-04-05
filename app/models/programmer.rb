class Programmer < ApplicationRecord
    has_many :projects , dependent: :destroy
end
