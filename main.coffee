# main.coffee

## Let's setup a template, add some variables, and render it.

Template = require "./template"

element = Template
  name: "Yo Yo Ma"
  interests: ["parties", "violins", "yolo"]

document.body.appendChild element

## Now we'll attach `style.styl` to it

style = document.createElement "style"
style.textContent = require "./style"
document.head.appendChild style




## Persisting Application Data Across Reloads

## Flickr Search

#Here we require a model and a template then combine them to create 
# an element to add to the DOM that let's us search Flickr using their JSON API.

Flickr = require "./flickr"
FlickrTemplate = require "./templates/flickr"
document.body.appendChild FlickrTemplate Flickr()
