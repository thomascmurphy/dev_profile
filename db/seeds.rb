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

company = Company.create(name: 'Test Company', description: 'Test company description', address_1: 'Test Company Location', city: 'Gotham', postcode: '11111', state: states.first)

user = User.new(
  email: "thomas.c.murphy@gmail.com",
  username: "testuser",
  password: "testpassword",
  password_confirmation: "testpassword",
  first_name: "Test",
  last_name: "User",
  blurb: "A little about myself",
  title: "My Title"
)
user.skip_confirmation!
user.save!

user_skills = Skill.create([{parent: user, language: languages[0], rating: 10},
														{parent: user, language: languages[1], rating: 9},
														{parent: user, language: languages[2], rating: 3},
														{parent: user, language: languages[3], rating: 10},
														{parent: user, language: languages[4], rating: 9},
														{parent: user, language: languages[5], rating: 6},
														{parent: user, language: languages[6], rating: 7}])



previous_job = Job.create(title: "Previous Job", description: "Mostly front end work", user: user, company: company, salary: 40000, start_date: Date.new(20012, 5, 12), end_date: Date.new(2013, 5, 12))

previous_job_skills = Skill.create([{parent: previous_job, language: languages[0], rating: 10},
																		{parent: previous_job, language: languages[1], rating: 6},
																		{parent: previous_job, language: languages[2], rating: 2},
																		{parent: previous_job, language: languages[3], rating: 8}])



current_job = Job.create(title: "Current Job", description: "Full stack dev", user: user, company: company, salary: 60000, start_date: Date.new(20013, 5, 12))

current_job_skills = Skill.create([{parent: current_job, language: languages[0], rating: 7},
																	 {parent: current_job, language: languages[1], rating: 9},
																	 {parent: current_job, language: languages[2], rating: 3},
																	 {parent: current_job, language: languages[3], rating: 6}])



new_job = Job.create(title: "New Job", description: "Cool new job", company: company, salary: 80000, start_date: Date.new(20013, 5, 12))

new_job_skills = Skill.create([{parent: new_job, language: languages[0], rating: 7},
															 {parent: new_job, language: languages[1], rating: 6},
															 {parent: new_job, language: languages[2], rating: 7},
															 {parent: new_job, language: languages[3], rating: 10},
															 {parent: new_job, language: languages[4], rating: 10},
															 {parent: new_job, language: languages[5], rating: 8},
															 {parent: new_job, language: languages[6], rating: 7}])

code_sample_1 = CodeSample.create(title: "Code Sample 1", description: "First bit of code.", user: user, date_completed: Date.new(20013, 5, 12), url: 'http://www.paperballdesigns.com')

code_sample_1_skills = Skill.create([{parent: code_sample_1, language: languages[0], rating: 7},
																	   {parent: code_sample_1, language: languages[1], rating: 9},
                                     {parent: code_sample_1, language: languages[3], rating: 6}])

code_sample_2 = CodeSample.create(title: "Code Sample 2", description: "Second bit of code.", user: user, date_completed: Date.new(20014, 5, 12), url: 'http://www.penny-arcade.com')

code_sample_2_skills = Skill.create([{parent: code_sample_2, language: languages[0], rating: 7},
																	   {parent: code_sample_2, language: languages[1], rating: 9},
                                     {parent: code_sample_2, language: languages[5], rating: 8},
                                     {parent: code_sample_2, language: languages[6], rating: 7}])