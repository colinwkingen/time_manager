## Time Tracker

#### By Colin Kingen, 2016

This app is viewable at: https://github.com/colinwkingen/time_manager

## Description

This is a time tracking app in Ruby on Rails 5, using Postgres.

### User Stories

Done:

* I want tp be able to log in to a personal account for my time management.
* I want to see that i'm logged in on a nav bar
* I want to be able to add days to the log
* I want to be able to add specific activities to each day.
* I want to see the percentage of an individual day spent on each activity.
* I want to see the percentage of all total logged time spent on each activity.
* I want to be able to remove a period of activity, and have the app confirm it.

To do:

* I want to be able to compare the time I spend on an activity to the user average.

## Setup/Installation Requirements

* Clone the repo from github
* Make sure Postgres is installed and running
* Make sure you have the node.js environment, rails 5 and activerecord installed.
* Run $rails db:create
* Run $rails db:migrate
* Run $rails db:seed
* create a Mailchimp account
* get an API key from Mailchimp
* create a .env file in the project root directory and add
MAILCHIMP_API_KEY=(Your api key)
* Run the rails server with $rails s
* Navigate to http://localhost:3000

## Known Bugs

Incomplete project. This app will continue to evolve over time and functionality will
continue to change.

## Support and contact details

Contact me on github if you have any questions.

## Technologies Used

* Ruby on Rails
* HTML
* Bootstrap
* Mailchimp API

#### Gems:

General:
* time_difference
* mailchimp
* devise

Testing and Benchmarking:
* newrelic_rpm
* capybara
* poltergeist
* simplecov
* factory_girl_rails
* rubocop
* shoulda-matchers

### License

Licensed under the MIT License

Copyright (c) 2016 **Colin W Kingen**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
