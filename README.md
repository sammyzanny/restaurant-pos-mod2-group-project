# README

Quick links:

Demo: https://www.youtube.com/watch?v=MVSDirXckN0

__________________________________________

Orderli is a simple Rails based restaurant point-of-sale (POS) system.  It has some basic login functionality using session cookies, as well as the ability to track orders, calculate totals and purchase numbers, and track paid orders vs. open and refunded.

### Prerequisites

The menu is built in through the seed file. You can add more there if you wish, there is also the ability to add from within the app itself. Make sure to follow the server side instructions to migrate the database once you clone it.

### Built With
* Ruby
* Rails
* SQLite3
* Session cookies

### Server-Side Install Instructions
1. Run ```bundle install```
2. Run ```rake db:create```
3. Run ```rake db:migrate```
4. Run ```rake db:seed```
5. Run ```rails s```
### Client-Side Install Instructions
1. Open your localhost (for Rails, localhost:3000)

### The App

There is a default account provided in the seed file to login without signing up.  Simply use the PIN 1234 when logging in.

### To-dos

Given more time to come back to this, icebox things to experiment with adding are:

1. Add admin/manager functionality to menu editing and refunding checks
2. Implement a payment processor

### Authors

Sam Zandi, Zach Weber ([@zwt17](https://github.com/zwt17)), Lindsay Mecher ([@lindsayMecher](https://github.com/lindsayMecher)), Matthew Gizzi ([@m-gizzi](https://github.com/m-gizzi)
