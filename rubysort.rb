#encoding: windows-1251:utf-8

# require 'csv'
# new_array1 = []

# CSV.foreach("drugcapital.csv", :encoding => 'windows-1251:utf-8') do |word|
# word = word.to_s
# original = word
# word = word.downcase
# word = word.split("")
# word = word.sort
# word = word.map { |i| i.to_s }.join("")
# word += "\t"*3 + original
# new_array1.push(word)
# new_array1 = new_array1.sort
# end

# puts new_array1

# How to find an anagram
# have a list of targets
# sort the list of targets into alphabetical order

# have a list of candidates
# sort the list of candidates into alphabetical order

# iterate through all the candidates sorted in order,

DRUGS = %w{Lipitor
Advair
Seretide
Plavix
Iscover
Nexium
Norvasc
Remicade
Enbrel
Zyprexa
Diovan
Risperdal
Aranesp
Rituxan
MabThera
Effexor
Protonix
Pantozol
Pantoloc
Singulair
Seroquel
Prevacid
Takepron
Procrit
Eprex
Cozaar
Hyzaar
Fosamax
Herceptin
Lovenox
Clexane
Avandia
Avandamet
Avandaryl
Actos
Zocor
Copaxone
AcipHex
Pariet
Neulasta
Lexapro
Cipralex
Gleevec
Glivec
Ambien
Stilnox
Aricept
Epogen
Zyrtec
Cirrus
Avapro
Aprovel
Avalide
Avastin
Taxotere
Eloxatin
Eloxatine
Zoloft
Tamiflu
Lantus
Crestor
Humira
Celebrex
Topamax
Prevnar
Vytorin
Zetia
Wellbutrin
Abilify
}

drugs_hash = {}
DRUGS.each do |d|
  drugs_hash[d.downcase.chars.sort.join.to_sym] = d
end


# puts drugs_hash.inspect

# puts drugs_hash.inspect

CAPITALS = [
"Abu Dhabi",
"Abuja",
"Accra",
"Adamstown",
"Addis Ababa",
"Algiers",
"Alofi",
"Amman",
"Amsterdam",
"Andorra la Vella",
"Ankara",
"Antananarivo",
"Apia",
"Ashgabat",
"Asmara",
"Astana",
"Asunción",
"Athens",
"Avarua",
"Baghdad",
"Baku",
"Bamako",
"Bandar Seri Begawan",
"Bangkok",
"Bangui",
"Banjul",
"Basseterre",
"Beijing",
"Beirut",
"Belfast",
"Belgrade",
"Belmopan",
"Berlin",
"Bern",
"Bishkek",
"Bissau",
"Bogotá",
"Brasília",
"Bratislava",
"Brazzaville",
"Bridgetown",
"Brussels",
"Bucharest",
"Budapest",
"Buenos Aires",
"Bujumbura",
"Cairo",
"Canberra",
"Caracas",
"Cardiff",
"Castries",
"Cayenne",
"Charlotte Amalie",
"Chisinau",
"Cockburn Town",
"Conakry",
"Copenhagen",
"Dakar",
"Damascus",
"Dhaka",
"Dili",
"Djibouti",
"Dodoma",
"Dar es Salaam",
"Doha",
"Douglas",
"Dublin",
"Dushanbe",
"Edinburgh",
"Edinburgh of the Seven Seas",
"El Aaiún",
"Episkopi Cantonment",
"Flying Fish Cove",
"Freetown",
"Funafuti",
"Gaborone",
"George Town",
"Georgetown",
"Georgetown",
"Gibraltar",
"Grytviken",
"Guatemala City",
"Gustavia",
"Hagåtña",
"Hamilton",
"Hanga Roa",
"Hanoi",
"Harare",
"Hargeisa",
"Havana",
"Helsinki",
"Honiara",
"Islamabad",
"Jakarta",
"Jamestown",
"Jerusalem",
"Ramallah",
"Gaza",
"Juba",
"Kabul",
"Kampala",
"Kathmandu",
"Khartoum",
"Kiev",
"Kigali",
"Kingston",
"Kingston",
"Kingstown",
"Kinshasa",
"Kuala Lumpur",
"Kuwait City",
"Libreville",
"Lilongwe",
"Lima",
"Lisbon",
"Ljubljana",
"Lomé",
"London",
"Luanda",
"Lusaka",
"Luxembourg",
"Madrid",
"Majuro",
"Malabo",
"Malé",
"Managua",
"Manama",
"Manila",
"Maputo",
"Marigot",
"Maseru",
"Mata-Utu",
"Mbabane",
"Lobamba",
"Melekeok",
"Mexico City",
"Minsk",
"Mogadishu",
"Monaco",
"Monrovia",
"Montevideo",
"Moroni",
"Moscow",
"Muscat",
"Nairobi",
"Nassau",
"Naypyidaw",
"N'Djamena",
"New Delhi",
"Niamey",
"Nicosia",
"Nicosia",
"Nouakchott",
"Nouméa",
"Nuku?alofa",
"Nuuk",
"Oranjestad",
"Oslo",
"Ottawa",
"Ouagadougou",
"Pago Pago",
"Palikir",
"Panama City",
"Papeete",
"Paramaribo",
"Paris",
"Philipsburg",
"Phnom Penh",
"Plymouth",
"Brades Estate",
"Podgorica",
"Port Louis",
"Port Moresby",
"Port Vila",
"Port-au-Prince",
"Port of Spain",
"Porto-Novo",
"Cotonou",
"Prague",
"Praia",
"Pretoria",
"Bloemfontein",
"Cape Town",
"Pristina",
"Pyongyang",
"Quito",
"Rabat",
"Reykjavík",
"Riga",
"Riyadh",
"Road Town",
"Rome",
"Roseau",
"Saipan",
"San José",
"San Juan",
"San Marino",
"San Salvador",
"Sanaá",
"Santiago",
"Santo Domingo",
"São Tomé",
"Sarajevo",
"Seoul",
"Singapore",
"Skopje",
"Sofia",
"Sri Jayawardenapura-Kotte",
"Colombo",
"St. George's",
"St. Helier",
"St. John's",
"St. Peter Port",
"St. Pierre",
"Stanley",
"Stepanakert",
"Stockholm",
"Sucre",
"La Paz",
"Sukhumi",
"Suva",
"Taipei",
"Tallinn",
"Tarawa",
"Tashkent",
"Tbilisi",
"Tegucigalpa",
"Tehran",
"Thimphu",
"Tirana",
"Tiraspol",
"Tokyo",
"Tórshavn",
"Tripoli",
"Tskhinvali",
"Tunis",
"Ulan Bator",
"Vaduz",
"Valletta",
"The Valley",
"Vatican City",
"Victoria",
"Vienna",
"Vientiane",
"Vilnius",
"Warsaw",
"Washington, D.C.",
"Wellington",
"West Island",
"Willemstad",
"Windhoek",
"Yamoussoukro",
"Abidjan",
"Yaoundé",
"Yaren",
"Yerevan",
"Zagreb"
]

answers = CAPITALS.select do |capital|
  drugs_hash[capital.delete(" ").downcase.chars.sort.join.to_sym]
end

puts answers
