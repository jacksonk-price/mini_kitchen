class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  enum visibility: [:hidden, :friends, :restricted]

  def self.visibility_options
    Recipe.visibilities.keys.map { |v| [v.humanize, v.to_s] }
  end
end
