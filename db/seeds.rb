# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

languages = Language.create([{name: 'HTML'},
                             {name: 'Javascript'},
                             {name: 'Ruby'},
                             {name: 'CSS'},
                             {name: 'jQuery'},
                             {name: 'Python'},
                             {name: 'Django'}])

states = State.create([{name: 'Alabama', abbreviation: 'AL'},
                       {name: 'Alaska', abbreviation: 'AK'},
                       {name: 'Arizona', abbreviation: 'AZ'},
                       {name: 'Arkansas', abbreviation: 'AR'},
                       {name: 'California', abbreviation: 'CA'},
                       {name: 'Colorado', abbreviation: 'CO'},
                       {name: 'Connecticut', abbreviation: 'CT'},
                       {name: 'Delaware', abbreviation: 'DE'},
                       {name: 'District of Columbia', abbreviation: 'DC'},
                       {name: 'Florida', abbreviation: 'FL'},
                       {name: 'Georgia', abbreviation: 'GA'},
                       {name: 'Hawaii', abbreviation: 'HI'},
                       {name: 'Idaho', abbreviation: 'ID'},
                       {name: 'Illinois', abbreviation: 'IL'},
                       {name: 'Indiana', abbreviation: 'IN'},
                       {name: 'Iowa', abbreviation: 'IA'},
                       {name: 'Kansas', abbreviation: 'KS'},
                       {name: 'Kentucky', abbreviation: 'KY'},
                       {name: 'Louisiana', abbreviation: 'LA'},
                       {name: 'Maine', abbreviation: 'ME'},
                       {name: 'Maryland', abbreviation: 'MD'},
                       {name: 'Massachusetts', abbreviation: 'MA'},
                       {name: 'Michigan', abbreviation: 'MI'},
                       {name: 'Minnesota', abbreviation: 'MN'},
                       {name: 'Mississippi', abbreviation: 'MS'},
                       {name: 'Missouri', abbreviation: 'MO'},
                       {name: 'Montana', abbreviation: 'MT'},
                       {name: 'Nebraska', abbreviation: 'NE'},
                       {name: 'Nevada', abbreviation: 'NV'},
                       {name: 'New Hampshire', abbreviation: 'NH'},
                       {name: 'New Jersey', abbreviation: 'NJ'},
                       {name: 'New Mexico', abbreviation: 'NM'},
                       {name: 'New York', abbreviation: 'NY'},
                       {name: 'North Carolina', abbreviation: 'NC'},
                       {name: 'North Dakota', abbreviation: 'ND'},
                       {name: 'Ohio', abbreviation: 'OH'},
                       {name: 'Oklahoma', abbreviation: 'OK'},
                       {name: 'Oregon', abbreviation: 'OR'},
                       {name: 'Pennsylvania', abbreviation: 'PA'},
                       {name: 'Rhode Island', abbreviation: 'RI'},
                       {name: 'South Carolina', abbreviation: 'SC'},
                       {name: 'South Dakota', abbreviation: 'SD'},
                       {name: 'Tennessee', abbreviation: 'TN'},
                       {name: 'Texas', abbreviation: 'TX'},
                       {name: 'Utah', abbreviation: 'UT'},
                       {name: 'Vermont', abbreviation: 'VT'},
                       {name: 'Virginia', abbreviation: 'VA'},
                       {name: 'Washington', abbreviation: 'WA'},
                       {name: 'West Virginia', abbreviation: 'WV'},
                       {name: 'Wisconsin', abbreviation: 'WI'},
                       {name: 'Wyoming', abbreviation: 'WY'},
                       {name: 'American Samoa', abbreviation: 'AS'},
                       {name: 'Guam', abbreviation: 'GU'},
                       {name: 'Northern Mariana Islands', abbreviation: 'MP'},
                       {name: 'Puerto Rico', abbreviation: 'PR'},
                       {name: 'Virgin Islands', abbreviation: 'VI'},
                       {name: 'Alberta', abbreviation: 'AB'},
                       {name: 'British Columbia', abbreviation: 'BC'},
                       {name: 'Manitoba', abbreviation: 'MB'},
                       {name: 'New Brunswick', abbreviation: 'NB'},
                       {name: 'Newfoundland and Labrador', abbreviation: 'NL'},
                       {name: 'Nova Scotia', abbreviation: 'NS'},
                       {name: 'Northwest Territories', abbreviation: 'NT'},
                       {name: 'Nunavut', abbreviation: 'NU'},
                       {name: 'Ontario', abbreviation: 'ON'},
                       {name: 'Prince Edward Island', abbreviation: 'PE'},
                       {name: 'Quebec', abbreviation: 'QC'},
                       {name: 'Saskatchewan', abbreviation: 'SK'},
                       {name: 'Yukon', abbreviation: 'YT'}])

Company.create(name: 'Test Company', description: 'Test company description', address_1: 'Test Company Location', city: 'Gotham', postcode: '11111', state: states.first)