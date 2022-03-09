# frozen_string_literal: true
#
#
#
#
#
User.new( name: "bizzbuzz", email: "bizz@buzz.com", password_digest: "bizzbuzz", password_confirmation: "bizzbuzz" )
binding.pry

# mathces above user INVALID => rollback in db
# User.create(name: "Michael Hartl", email: "michael@example.com", password_digest: "foobar", password_confirmation: "foobar")

# password: < 6, INVALID => rollback in db on attempt to save to sqlite3 via activeRecord
# User.create(name: "Michael H", email: "michaelexample.com", password_digest: "foo", password_confirmation: "foobar")
