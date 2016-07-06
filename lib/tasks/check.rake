require 'open-uri'

namespace 'check' do

  task 'countries' => :environment do

    Country.where(has_pokemon_at: nil).each do |country|
      url = "https://itunes.apple.com/#{country.code}/developer/niantic-inc./id1037205060"
      if open(url).read.include?("Pokémon")
        country.update_attribute(:has_pokemon_at, Time.now)
      end
    end

  end

end
