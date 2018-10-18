# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# roles = %w(super admin user)

# 3.times { |i| Role.create({  id: i+1, name: roles[i] }) }

#
# password = ENV['SUPER_PASSWORD']
# phoneno = ENV['SUPER_PHONE']
# email = ENV['SUPER_EMAIL'],
# first_name = ENV['SUPER_FIRSTNAME']
# last_name =  ENV['SUPER_LASTNAME']

password = 'admin_admin'
phoneno = '08163816325'
email = 'contactadmin@gmail.com'
first_name = 'nelson'
last_name =  'rotimi'

user = User.new({
                    password: password,
                    phoneno: phoneno,
                    role_id: 1,
                    status: false,
                    email: email,
                    first_name: first_name,
                    last_name: last_name
                })
user.save! if user.valid?
