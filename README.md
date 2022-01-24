
```
# Ruby on Rails Tutorial sample application

This is my [sample_app on Heroku](https://r-o-r-t-sample-app.herokuapp.com/) for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hartl](https://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```

$ gem install bundler -v 2.2.29
$ bundle 2.2.29 config set --local without 'production'
$ bundle 2.2.29 install

```

Next, migrate the database:

```

$ rails db:migrate

```

Finally, run the test suite to verify that everything is working correctly:

```

$ rails test

```

If the test suite passes, you'll be ready to run the app in a local server:

```

$ rails server

```

For more information, see the
[*Ruby on Rails Tutorial* book](https://www.railstutorial.org/book).
```
