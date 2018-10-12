class Column < ApplicationRecord
  belongs_to :battery, foreign_key: "battery_id"
  belongs_to :building#, through => :Batteries
  has_many :elevators

  def Type_enum
    ['Residential','Commercial','Corporate']
  end

  #def name
  #  "#{customer.battery.} Column #{self.id}"
  #end

end
