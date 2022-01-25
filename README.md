```
# Ruby on Rails Tutorial sample application
[Preview Image of Finished Sample App](https://softcover.s3.amazonaws.com/636/ruby_on_rails_tutorial_6th_edition/images/figures/home_page_with_feed.png")

This is my [sample_app on Heroku running production](https://r-o-r-t-sample-app.herokuapp.com/) for
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

Personal Dev Flow:

`BRANCH: 1. (main) - Initialize repo, add gemfile, bundle without production, update readme, create basic hello action and set to root route, heroku login / create app / rename app/ push to heroku main, test deploy was a success,and add link to README. (next) => `

`BRANCH: 2. (static-pages) - git checkout -b static-pages, continue course<TODO:...>`
