[![Build Status](https://travis-ci.org/ankit8898/DE.png?branch=master)](https://travis-ci.org/ankit8898/DE)[![Coverage Status](https://coveralls.io/repos/ankit8898/DE/badge.png)](https://coveralls.io/r/ankit8898/DE)
# Data Engineering

A Rails App to Normalize a tab delimited file and calculate revenue.

Demo app can be [found here](http://frozen-sands-9545.herokuapp.com/users/sign_in)

##Installing

Installing..

1. Clone this repo, and `cd` into it.
2. `bundle install` to install the Ruby dependencies
3. `bundle exec rake db:build`


## Testing

The application uses rspec, factory girl and shoulda to have it's unit tests

	bundle exec rake db:recreate RAILS_ENV=test
	bundle exec rspec

## Deploying

Currently deployed on Heroku.  Deployment rights with @ankit8898



