class Zona < ApplicationRecord
  has_many :animals

  validates :temperatura, inclusion: { in: -20..60 }
    validates :humitat, inclusion: { in: 10..100 }
end
