# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'roo'

districts = {"1": "Del Norte, Humboldt, Lake, Mendocino","2": "Lassen,  Modoc,  Plumas,  Shasta,  Siskiyou,  Tehama, Trinity","3": "Butte, Colusa, El Dorado, Glenn, Nevada, Placer, Sacramento, Sierra, Sutter, Yolo, Yuba","4": "Alameda, Contra Costa, Marin, Napa, San Franciso, San Mateo, Santa Clara, Solano, Sonoma","5": "Monterey, San Benito, San Luis Obispo, Santa Barbara, Santa Cruz","6": "Fresno, Kern, Kings, Madera, Tulare","7": "Los Angeles, Ventura","8": "Riverside, San Bernardino","9": "Inyo, Mono, Kern","10": "Alpine, Amador, Calaveras, Mariposa, Merced, San Joaquin, Stanislaus, Tuolumne","11": "San Diego, Imperial","12": "Orange"}

districts.each do |number, region|
  District.create(number: number,region: region)
end
