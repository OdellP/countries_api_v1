# README

* Ruby version:
  `3.0.0`
  `Rails version 6.1`
  
* Once the repo is cloned, please run:
  `bundle install` to ensure all required gems are installed properly.

* Database creation
  - API uses a Postgresql Database.
  - Run `rails db:migrate` to ensure all tables are created.
  - Run `rails db:reset` to ensure the database is clean, configured and seeded.
  
* How to run the test suite
  - API is tested using Rspec.
  - To run the test suite, open a terminal in the project directory and run `bundle exec rspec`.
    - This should yeild 25 total tests.
  
* How to run the server and view response data:
  - Open a new terminal within the project and run `rails s`.
  - By default, the server will run on port 3000. You can specify a port of your choosing by running `rails s -p PORT_NUMBER_HERE`
  - In your browser navigate to: `http://localhost:3000/api/v1/countries/`
  - This should yeild a JSON response similar to the screenshot below:
  ![Screen Shot 2022-02-27 at 2 56 02 PM](https://user-images.githubusercontent.com/83235919/155897696-16971028-6b01-4dc8-8231-b499a0644779.png)

  - To view the response data for a single country, navigate to: `http://localhost:3000/api/v1/countries/1`
  - The response data should look similar to the screenshot below:
  ![Screen Shot 2022-02-27 at 2 58 01 PM](https://user-images.githubusercontent.com/83235919/155897765-984b8341-5d84-40c0-9ec2-c9b3ecc2f8ef.png)
