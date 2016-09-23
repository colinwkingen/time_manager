## Time Tracker

#### By Colin Kingen, 2016

This app is viewable at: https://github.com/colinwkingen/time_manager

## Description

This is the beginning of a time tracking app in Ruby on Rails, using Postgres.

### Bug Hunting

for creating new tags in the create activity view without rendering new view:
activity did not exist so we create an activity when the new route is reached
further tag additions will need to use the update routes
destroying untagged dummy activities will need to be handled if user navigates from activity save without creation.. possibly activity.last.destroy on back


maybe you should just allow the user to add a day with a title from the main view day route, then let them add tags in the edit path. this shit is getting annoying. swim with the current, not against it.

### Specifics to implement
* You should be able to add a new activity in a field
* You should be able to choose from available activities in a dropdown
* You should be able to see all time percentages on a dashboard
### User Stories
* I want tp be able to log in to a personal account for my time management.
* I want to see that i'm logged in on a nav bar
* I want to be able to add days to the log
* I want to be able to add specific activities to each day.
* I want to see the percentage of an individual day spent on each activity.
* I want to see the percentage of all total logged time spent on each activity.
* I want to be able to remove a period of activity, and have the app confirm it.
* I want to be able to compare the time I spend on an activity to the user average.



## Setup/Installation Requirements

* Clone the repo from github
* Make sure Postgres is installed and running
* Make sure you have the node.js environment, rails 5 and activerecord installed.
* Run $rails db:create
* Run $rails db:migrate
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
* node.js


### License

Licensed under the MIT License

Copyright (c) 2016 **Colin W Kingen**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
