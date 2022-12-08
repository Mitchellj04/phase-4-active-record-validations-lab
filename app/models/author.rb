class Author < ApplicationRecord

    validates :name, presence: true
    validates :name, uniqueness: {case_sentitive: true}
    validates :phone_number, length: {is: 10}
end
