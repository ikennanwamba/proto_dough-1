# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
u = User.new(
    username: "admin",
    email: "admin@example.com",
    password: "1234",
    admin: true
)
u.skip_confirmation!
u.save!

u1 = User.new(
    username: "user",
		email: "user@email.com",
		password: "1234",
		admin: false
)
u1.skip_confirmation!
u1.save!

u2 = User.new(
		username: "user2",
		email: "user2@email.com",
		password: "1234",
		admin: false
)
u2.skip_confirmation!
u2.save!
