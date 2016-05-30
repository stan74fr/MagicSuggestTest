# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Employee.where(lastname: 'Smith', firstname: 'Janet', email: 'janet.smith@email.com').first_or_create
Employee.where(lastname: 'Doe', firstname: 'John', email: 'john.doe@email.com').first_or_create
Status.where(name: 'To Do').first_or_create
Status.where(name: 'In Progress').first_or_create
Status.where(name: 'Done').first_or_create
Status.where(name: 'Cancelled').first_or_create
