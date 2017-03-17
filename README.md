# Basic example of the sample solidus store integrated with Scrivito

This repo can be cloned and used with your own Scrivito credentials to get a feel for what a simple integration with Scrivito can do. 

## To get this going:

* Signup for [Scrivito](https:scrivito.com/signup)

* Clone this repo to you computer

* Add a .env file to your repo and add your Scrivito API keys

* ```bundle```

* ```bundle exec rails g spree:install```

* ```bundle exec rails g solidus:auth:install```

* ```bundle exec rails g scrivito:install```

* ```bundle exec rake scrivito:migrate scrivito:migrate:publish```

* run ```rails server``` and open ```localhost:3000```

* login to solidus as an admin (using the username and password you entered in the solidus:auth:install genterator above, or if you left the defaults use those: admin@example.com/test123).

* See the Solidus integration documentation for how this was built

### System requirements for Ruby and Rails versions are listed in the gemfile
