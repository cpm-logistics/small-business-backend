require 'csv'

districts = {"1": "Del Norte, Humboldt, Lake, Mendocino","2": "Lassen,  Modoc,  Plumas,  Shasta,  Siskiyou,  Tehama, Trinity","3": "Butte, Colusa, El Dorado, Glenn, Nevada, Placer, Sacramento, Sierra, Sutter, Yolo, Yuba","4": "Alameda, Contra Costa, Marin, Napa, San Franciso, San Mateo, Santa Clara, Solano, Sonoma","5": "Monterey, San Benito, San Luis Obispo, Santa Barbara, Santa Cruz","6": "Fresno, Kern, Kings, Madera, Tulare","7": "Los Angeles, Ventura","8": "Riverside, San Bernardino","9": "Inyo, Mono, Kern","10": "Alpine, Amador, Calaveras, Mariposa, Merced, San Joaquin, Stanislaus, Tuolumne","11": "San Diego, Imperial","12": "Orange"}

districts.each do |number, region|
  District.create(number: number,region: region)
end

CSV.foreach("path to file") do |row|
  Company.create(dbe: row[0],sbe: "",name: row[1],street: row[2]+row[3],city: row[4],state: row[5],zip: row[6],contact: row[8],email: row[7],phone: row[9]+"-"+row[10])
end
