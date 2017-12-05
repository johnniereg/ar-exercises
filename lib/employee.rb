class Employee < ActiveRecord::Base
    belongs_to :store

    validates :first_name, presence: true
    validates :last_name,  presence: true
    validates :hourly_rate, numericality: { greater_than: 40, less_than: 200 }
    validates :store_id, presence: true

    before_create :generate_temporary_password

    private
        def generate_temporary_password
            self.password = SecureRandom.hex 4
        end

end
