# Good Reads Rails

It turns out that we really love books. So much so that we want to catalogue which books are our favorite, and allow our friends to provide reviews on our very own website.

Create the Following

# Setup
```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

Migrations have been pre-written for you to save on time, but make sure you know how to generate this on your own! If you want to populate the database with example data, run `bundle exec rake db:seed`.

**To run your tests**, run:
```no-highlight
  bundle exec rake db:test:prepare
  rspec
```
in a separate terminal tab.

This is a test driven assignment, so let the tests guide you. Make sure to read each test before running the test file in order to get a sense of what is expected of you.

For the sake of time, this app priorities viewing books on a show page, and then adding reviews. However, you are encouraged to add your own book form to the app so that users can add new books!

# Acceptance Criteria

We highly recommend making an ER Diagraom for this assignment.

Users should be able to:
* View a list of all of the books from our database
* Leave a review on a specific book
* View a show page for a book and its reviews
* (Time permitting) add a new book

#### Book

* A book must have a title
* A book must have author
* Can optionally have an ISBN (string)
* A book can have many reviews

#### Reviews

* Must have a rating
* Must have a body
* Review must belong to a book
