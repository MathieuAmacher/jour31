class Event < ApplicationRecord

        validates :start_date, comparison: { greater_than: Time.now}
        validates :duration, numericality: { only_integer: true, greater_than: 0, inclusion: [5, 10, 15, 20, 25, 30, 60, 90, 120] }                                         #il me manque le multiple de 5
        validates :title, length: { in: 5..140 }
        validates :description, length: { in: 20..1000}
        validates :price, numericality: { in: 1..1000}
        validates :location, presence: true
        belongs_to :user, foreign_key: true
        belongs_to :admin, class_name:'User', foreign_key: 'admin_id'
        has_many :participations
        has_many :users, through: :participations
        has_one_attached :avatar
    

    
end
