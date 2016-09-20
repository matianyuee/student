class Container < ApplicationRecord
  has_many :studentinfos, dependent: :destroy
  has_many :teachers, dependent: :destroy
end
