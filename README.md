[![Build Status](https://travis-ci.org/mmncit/rwitter.svg?branch=master)](https://travis-ci.org/mmncit/rwitter)

# Rwitter

Rwitter is a Rails web app to manage and view posts. 

### Live APP LINK : [https://rwitter19.herokuapp.com](https://rwitter19.herokuapp.com)

## Features:

* Users can perform CRUD operations on their own posts.
* Users can view all other posts ordered by the newest first.
* Users can search posts by title or body.

## Build instruction:

```bash
bundle install 
rails server
```
To run the test suite:
```bash
rspec
```

## Technologies:

* Database: PostgreSQL

* Test framework: rspec

* Gems:
  * faker, factory_bot_rails (to create mocks)
  * shoulda-matchers (to write rspec for models)
  * devise (for user-authentication)
  * figaro (heroku-friendly rails app configuration)
  * semantic-ui-sass (Semantic UI for Sass)

## Author

**Mamun Rashid**

* [github/mmncit](https://github.com/mmncit)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update the tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
