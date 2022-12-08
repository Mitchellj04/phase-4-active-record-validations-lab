class Post < ApplicationRecord

    validates :title, presence: true 
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction","Non-Fiction"]}
    validate :error_facts 

    def error_facts
        if title == "True Facts"
            errors.add(:title, "This title is click bate.")
        end
    end
end
