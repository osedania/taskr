# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contractors = Contractor.create(
  [{
    email: 'contractor1@c.com',
    password: '12345678',
    password_confirmation: '12345678',
    first_name: 'John',
    last_name: 'Doe',
    company_name: 'ABC Construction',
    address: '123 Main St',
    city: 'Constown',
    state: 'Conststate',
    zip_code: '12345',
    country: 'Constcountry',
    experience: '1This is my experience'
  }, {
    email: 'contractor2@c.com',
    password: '12345678',
    password_confirmation: '12345678',
    first_name: 'John',
    last_name: 'Doe',
    company_name: 'ABC Power',
    address: '123 Power St',
    city: 'Powertown',
    state: 'Powerstate',
    zip_code: '54321',
    country: 'Powercountry',
    experience: '2This is my experience'
  }]
)

requesters = Requester.create(
  [{
    email: 'requester1@r.com',
    password: '12345678',
    password_confirmation: '12345678',
    first_name: 'Jane1',
    last_name: 'Doanne1'
  }, {
    email: 'requester2@r.com',
    password: '12345678',
    password_confirmation: '12345678',
    first_name: 'Jane2',
    last_name: 'Doanne2'
  }]
)
task_categories = TaskCategory.create(
  [{ name: 'Plumbing' }, { name: 'Electrical' }, { name: 'Computer' }]
)

tasks = Task.create(
  [{
    name: 'Bad computer',
    description: 'Faulty motherboard',
    location: 'Gothenborg, Sweden',
    task_category: task_categories.last,
    minimum_budget: 200,
    maximum_budget: 400,
    requester: requesters.first,
    status: 'Open'
  }, {
    name: 'Broken pipe',
    description: 'Pipe in kitchen broken',
    location: 'Stockholm, Sweden',
    task_category: task_categories.first,
    maximum_budget: 100,
    requester: requesters.last,
    status: 'Bidding'
  }, {
    name: 'Broken toilet',
    description: 'Toilet need to be replaced',
    location: 'Stockholm, Sweden',
    task_category: task_categories.first,
    minimum_budget: 150,
    requester: requesters.first,
    status: 'Contracted'
  }, {
    name: 'Computer not working',
    description: 'I cannot print',
    location: 'Pretoria, South Africa',
    task_category: task_categories.last,
    minimum_budget: 200,
    maximum_budget: 200,
    requester: requesters.last,
    status: 'Received'
  }, {
    name: 'Toaster not working',
    description: 'I cannot get any toasts in the morning!',
    location: 'Pretoria, South Africa',
    task_category: task_categories[1],
    requester: requesters.last,
    status: 'Complete'
  }, {
    name: 'Peel off power stickers',
    description: 'Peel off power stickers from my walls',
    location: 'Miami, USA',
    task_category: task_categories[1],
    requester: requesters.last,
    status: 'Closed'
  }]
)
