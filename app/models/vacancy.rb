class Vacancy < ActiveRecord::Base
  include HasSkills

  validates :title, :salary, :contact, presence: true
  validates :contact, email: true

  scope :active, -> {where('expired > ?', Time.zone.now)}
  scope :arch, -> {where('expired < ?', Time.zone.now)}
end

