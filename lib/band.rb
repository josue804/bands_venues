class Band < ActiveRecord::Base
  has_many(:events)
  has_many(:venues, :through => :events)

  before_save(:capitalize_band_properties)

  validates(:name, :presence => true)
  validates(:style, :presence => true)
  validates(:lead, :presence => true)

  private

  define_method(:capitalize_band_properties) do
    articles = ['the', 'in', 'for', 'in', 'an', 'that', 'and', 'or']
    new_attr = []
    self.attributes.each do |attr_name, attr_value|
      if attr_value.class == String
        attr_value.split(" ").each do |word|
          if !articles.include?(word)
            new_attr.push(word.capitalize)
          else
            new_attr.push(word)
          end
        end
        new_attr[0].capitalize!
        if attr_name == "name"
          self.name = new_attr.join(" ")
        elsif attr_name == "style"
          self.style = new_attr.join(" ")
        elsif attr_name == "lead"
          self.lead = new_attr.join(" ")
        end

        new_attr.clear
      end
    end
  end
end
