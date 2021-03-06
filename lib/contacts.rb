require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

def remove_strawberry(contacts)
  # 1: iterate over the first level
  contacts.each do |person, contact_details_hash|
    # 2: iterate over the second level
    contact_details_hash.each do |attribute, data|
      # 3: locate the element we're looking for
      if attribute == :favorite_ice_cream_flavors
        # 4: update the hash
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end
