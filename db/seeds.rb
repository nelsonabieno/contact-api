# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# roles = %w(super admin user)

# 3.times { |i| Role.create({  id: i+1, name: roles[i] }) }

user = User.new({
                    password: ENV['SUPER_PASSWORD'],
                    phoneno: ENV['SUPER_PHONE'],
                    role_id: 1,
                    status: false,
                    email: ENV['SUPER_EMAIL'],
                    first_name: ENV['SUPER_FIRSTNAME'],
                    last_name: ENV['SUPER_LASTNAME']
                })

user.save! if user.valid?
