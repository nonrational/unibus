# E Unibus Pluram [![](https://circleci.com/gh/nonrational/unibus.png?circle-token=:circle-token)](https://circleci.com/gh/nonrational/unibus)

> Out of one, many.


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
