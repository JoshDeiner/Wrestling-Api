# Wrestling Api
### Api built via Ruby on Rails framework
## 
## Deployed Api : https://wrestling-resources-api.herokuapp.com/api/v1/categories
### Purpose of Api is to provide a dataset of wrestling educational resources
## 
## Using API

### Access API's main page url/ categories
### To access each indivual resource category enter id number and category name.
### For example, plug in id and title. To access the below category use the below url: 
#### https://wrestling-resources-api.herokuapp.com/api/v1/categories/1/books
  {
    "id": 1,
    "title": "books"
  },

## Using locally 
#### bundle install
#### rake db:create
#### rake db:migrate 
#### rake db:seed 
#### rails s
