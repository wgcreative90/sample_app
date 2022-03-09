# frozen_string_literal: true
#
#
#
#
#
test_user = User.new(name: 'test_user', email: 'swlsldk@example.com', password: 'somethingotherpassword')
render html action: 'static_pages#home', status: 200 if test_user.save
test_user[:name] = "testUser"
test_user[:email] = "testUser@example.com"
test_user[:password_digest] = "testUserExample"

# mathces above user INVALID => rollback in db
# User.create(name: "Michael Hartl", email: "michael@example.com", password_digest: "foobar", password_confirmation: "foobar")

# password: < 6, INVALID => rollback in db on attempt to save to sqlite3 via activeRecord
# User.create(name: "Michael H", email: "michaelexample.com", password_digest: "foo", password_confirmation: "foobar")
