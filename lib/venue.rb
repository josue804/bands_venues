class Venue < ActiveRecord::Base
  has_many(:events)
  has_many(:bands, :through => :events)

  validates(:name, :presence => true)
  validates(:seats, :presence => true)

  before_save(:capitalize_band_properties)

  private

  define_method(:capitalize_band_properties) do
    articles = ['the', 'in', 'for', 'in', 'an', 'that', 'and', 'or']
    new_name = []
    name.split(" ").each do |word|
      if !articles.include?(word)
        new_name.push(word.capitalize)
      else
        new_name.push(word)
      end
    end
    new_name[0].capitalize!()
    self.name = new_name.join(" ")
  end
end
