require 'csv'

districts = {"1": "Del Norte, Humboldt, Lake, Mendocino","2": "Lassen,  Modoc,  Plumas,  Shasta,  Siskiyou,  Tehama, Trinity","3": "Butte, Colusa, El Dorado, Glenn, Nevada, Placer, Sacramento, Sierra, Sutter, Yolo, Yuba","4": "Alameda, Contra Costa, Marin, Napa, San Franciso, San Mateo, Santa Clara, Solano, Sonoma","5": "Monterey, San Benito, San Luis Obispo, Santa Barbara, Santa Cruz","6": "Fresno, Kern, Kings, Madera, Tulare","7": "Los Angeles, Ventura","8": "Riverside, San Bernardino","9": "Inyo, Mono, Kern","10": "Alpine, Amador, Calaveras, Mariposa, Merced, San Joaquin, Stanislaus, Tuolumne","11": "San Diego, Imperial","12": "Orange"}

districts.each do |number, region|
  District.create(number: number,region: region)
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'company_db1.csv'))
csv = CSV.parse(csv_text, :skip_blanks => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  company = Company.new
  company.dbe = row[0]||"n/a"
  company.name = row[1]||"n/a"
  company.street = "#{row[2]} #{row[3]}"||"n/a"
  company.city = row[4]||"n/a"
  company.state = row[5]||"n/a"
  company.zip = row[6]||"n/a"
  company.contact = row[8]||"n/a"
  company.email = row[7]||"n/a"
  company.phone = "#{row[9]}-#{row[10]}"||"n/a"
  company.save
end
