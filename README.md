# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Features

User registration and login form, a non-logged in user will be sent back to the login page whenver trying to access any of the base pages

To access admin features click on the "admin" dropdown menu in the header and input the username and password provided below

Username: "Jungle"
Password: "book"


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Cypress
- Database cleaner

## Screenshots

Signup Page
!["Signup](https://github.com/wundeeh/jungle/blob/master/docs/1_Signup_Page.png?raw=true)

Home Page
!["Home"](https://github.com/wundeeh/jungle/blob/master/docs/2_Home_Page.png?raw=true)

Product Page
!["Product"](https://github.com/wundeeh/jungle/blob/master/docs/2_Product_Page.png?raw=true)

Admin Page
!["Admin"](https://github.com/wundeeh/jungle/blob/master/docs/4_Admin_Page.png?raw=true)

Cart Page
!["Cart"](https://github.com/wundeeh/jungle/blob/master/docs/5_Item_In_Cart.png?raw=true)