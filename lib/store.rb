class Store < ActiveRecord::Base
    has_many :employees

    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { greater_than: 0 }
    validate :carries_men_or_womens

    def carries_men_or_womens
        if mens_apparel != true && womens_apparel != true
            errors.add(:mens_apparel, "cannot be false if womens apparel is false.")
            errors.add(:womens_apparel, "cannot be false if mens apparel is false.")
        end
    end


end
