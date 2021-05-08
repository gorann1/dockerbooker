class Search < ApplicationRecord
  self.inheritance_column = "not_sti"

  def search_pokemon
    location = Location.all

    location = location.where(['name LIKE ?', name]) if name.present?
    location = location.where(['type LIKE ?', type]) if type.present?
    location = location.where(['region LIKE ?', region]) if region.present?

    return location
  end
end