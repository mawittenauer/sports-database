# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

nfl = League.create(name: "National Football League", acronym: "NFL", sport: "Football")

afc = Conference.create(name: "American Football Conference", acronym: "AFC", league: nfl)
nfc = Conference.create(name: "National Football Conference", acronym: "NFC", league: nfl)

afc_north = Division.create(name: "North", conference: afc)
afc_south = Division.create(name: "South", conference: afc)
afc_east = Division.create(name: "East", conference: afc)
afc_west = Division.create(name: "West", conference: afc)

nfc_north = Division.create(name: "North", conference: nfc)
nfc_south = Division.create(name: "South", conference: nfc)
nfc_east = Division.create(name: "East", conference: nfc)
nfc_west = Division.create(name: "West", conference: nfc)

Team.create(name: "Browns", division: afc_north)
Team.create(name: "Steelers", division: afc_north)
Team.create(name: "Bengals", division: afc_north)
Team.create(name: "Ravens", division: afc_north)

Team.create(name: "Titans", division: afc_south)
Team.create(name: "Colts", division: afc_south)
Team.create(name: "Jaguars", division: afc_south)
Team.create(name: "Texans", division: afc_south)

Team.create(name: "Patriots", division: afc_east)
Team.create(name: "Dolphins", division: afc_east)
Team.create(name: "Bills", division: afc_east)
Team.create(name: "Jets", division: afc_east)

Team.create(name: "Broncos", division: afc_west)
Team.create(name: "Chargers", division: afc_west)
Team.create(name: "Raiders", division: afc_west)
Team.create(name: "Chiefs", division: afc_west)

Team.create(name: "Packers", division: nfc_north)
Team.create(name: "Bears", division: nfc_north)
Team.create(name: "Vikings", division: nfc_north)
Team.create(name: "Lions", division: nfc_north)

Team.create(name: "Saints", division: nfc_south)
Team.create(name: "Buccaneers", division: nfc_south)
Team.create(name: "Panthers", division: nfc_south)
Team.create(name: "Falcons", division: nfc_south)

Team.create(name: "Cowboys", division: nfc_east)
Team.create(name: "Giants", division: nfc_east)
Team.create(name: "Redskins", division: nfc_east)
Team.create(name: "Eagles", division: nfc_east)

Team.create(name: "Rams", division: nfc_west)
Team.create(name: "Fortyniners", division: nfc_west)
Team.create(name: "Cardinals", division: nfc_west)
Team.create(name: "Seahawks", division: nfc_west)
