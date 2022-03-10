User.create(name: 'test_user', email: 'swlsldk@example.com', password_digest: 'somethingotherpassword')
# mathces above user INVALID => rollback in db
# User.create(name: "Michael Hartl", email: "michael@example.com", password_digest: "foobar", password_confirmation: "foobar")

# password: < 6, INVALID => rollback in db on attempt to save to sqlite3 via activeRecord
# User.create(name: "Michael H", email: "michaelexample.com", password_digest: "foo", password_confirmation: "foobar")
