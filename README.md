## Olio Coding Task

### Getting Started

The app is running on a heroku [dyno](https://vast-caverns-51520.herokuapp.com/), but if you want to run it locally, open up a terminal and run the following commands:

Clone the repo: `git clone git@github.com:philbrockwell1984/olio_coding_task.git`\
CD into it: `cd olio_coding_task`\
Install the dependencies: `bundle install` (Ensure you have the bundler gem: `gem install bundler`)\
Set up the databases: `bundle exec rails db:create db:migrate`\
Run the server: `bundle exec rails s`

Then open up `http://localhost:3000/` in your browser of choice.

### Improvements

#### Front-end
JS could be used so POST/GET requests could be made without having to refresh the page.

#### User Management
The devise gem could be used to manage users. The app could then restrict each user to only like each article once.

#### Feature Testing
Cucumber/Rspec could be used to add additional test for the front end actions.
