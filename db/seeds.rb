# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



papers = []
papers << Paper.create( x: 0, y: 0, z: 0, doi: "10.1093/nar/gks1195", coordinatesystem: "MNI", journal: "Brain Journal" )
papers << Paper.create( x: 3, y: 3, z: 3, doi: "10.1093/nar/gks1196", coordinatesystem: "MNI", journal: "Brain Journal" )
papers << Paper.create( x: 20, y: 20, z: 30, doi: "10.1093/nar/gks1197", coordinatesystem: "MNI", journal: "Brain Journal" )
papers << Paper.create( x: 0, y: 0, z: 10, doi: "10.1093/nar/gks1198", coordinatesystem: "MNI", journal: "Brain Journal" )
papers << Paper.create( x: 0, y: 0, z: 20, doi: "10.1093/nar/gks1199", coordinatesystem: "MNI", journal: "Brain Journal" )

users = []
users << User.create( firstname: "Noah", lastname: "Kaplan", email: "noah@email.com", password: "password", password_confirmation: "password" )

titles = []
titles << Title.create( title: "Neurons", doi: "10.1093/nar/gks1195" )
titles << Title.create( title: "The Brain", doi: "10.1093/nar/gks1196" )
titles << Title.create( title: "Synapses", doi: "10.1093/nar/gks1197" )
titles << Title.create( title: "Neurons 2", doi: "10.1093/nar/gks1198" )
titles << Title.create( title: "Research", doi: "10.1093/nar/gks1199" )