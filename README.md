# README

Custom uthentication rails app for api only projects where the front end is done in a separated front end app or mobile app.


# Setup
  - Download repo
  - Bundle install
  - rails: db:create
  - rails: db:migrate
  - rails s -p 3001

  Once the server is running in another tab run open the rails console and create a new user
  - User.create!(email: "test@dev.com", password: "12345678", password_confirmation: "12345678")

  Once a user has been create it, create a session using curl
  - curl --header "Content-Type: application/json" --request POST --data '{"user": { "email": "test@dev.com", "password": "12345678"}}' http://localhost:3000/sessions


PROJECT IN PROGRESS
