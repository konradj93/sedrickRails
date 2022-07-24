class Pokemon < ApplicationRecord
  serialize :types, Array

  validates :name, presence: true
  validates :types, presence: true
  validates :hp, presence: true
  validates :attack, presence: true
  validates :defense, presence: true
  validates :speed, presence: true
  validates :special_attack, presence: true
  validates :special_defense, presence: true
end
