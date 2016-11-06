# E Unibus Pluram [![CircleCI](https://circleci.com/gh/nonrational/unibus/tree/master.svg?style=svg)](https://circleci.com/gh/nonrational/unibus/tree/master)

_Out of one, many._

# Features

- Tests run via CircleCI
- Heroku deployment (with [](https://github.com/nonrational/heroku-buildpack-hub-spoke))

# Why?

- Be [AuthZ Free™](https://www.betterment.com/resources/inside-betterment/engineering/security-framework/) by spinning up new spoke Rails applications (that include `core`) for each new consumer.
- Given a single repo, all related applications (that share a database) are free to run alongside one another without tripping over internal gem versioning.
- Each Rails app can mount its own `devise` model, whether or not that model lives in `core`.

# Caveats

- A single application must be appointed "primary" and is responsible for maintaining and running migrations. In our case, it's `customer`. However, that makes utilizing `rails g model Foo` in `employee` a little more cumbersome.

# Tips

- Ignore `.engines` in your editor's project settings

# Notes

```shell
# create all the rails app
rbenv local 2.3.1
gem install rails
rbenv rehash

rails plugin new api -T --mountable --dummy-path=spec/dummy --database=postgresql
rails plugin new core -T --mountable --dummy-path=spec/dummy --database=postgresql

rails new customer -T --database=postgresql
rails new employee -T --database=postgresql

ln -s $PWD/customer ~/.pow/unibus-customer
ln -s $PWD/employee ~/.pow/unibus-employee
```
