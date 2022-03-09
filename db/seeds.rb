# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


#   run rake db:drop , rake db:create, rake db:seed, rails c, User.count => 1, this is because only one user below
# passes validations in the model and model/user/user_test.rb specs are all passing so we knew this would happen
# already thanks to TDD test driven development.
User.create(name: "Michael Hartl", email: "michael@example.com", password: "foobar", password_confirmation: "foobar")

# mathces above user INVALID => rollback in db
User.create(name: "Michael Hartl", email: "michael@example.com", password: "foobar", password_confirmation: "foobar")

# password: < 6, INVALID => rollback in db on attempt to save to sqlite3 via activeRecord
User.create(name: "Michael H", email: "michaelexample.com", password: "foo", password_confirmation: "foobar")
