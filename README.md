
# Rails Mock Code Challenge: Comic Book Collection

Sharpen your Rails skills by building a Comic Book Collection app for NYC! This practice challenge mirrors a real-world scenario where you'll manage collections and their comics.

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, code and debug

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain

You've just been hired by the 'NYC Comic Book Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite comic book collections and the comics in them. To do this, we need a way to keep track of the many NYC collections and record the comics for each collection.

Luckily, another developer has already started the job. We have a controller, model, and views to support the creation, listing, and display of collections. Visiting `/collections` displays all of the collections recorded by members. Unfortunately, we don't have a way for members to record the comics in each collection. **Each Collection has many Comics, and each Comic belongs to a Collection.**

## Instructions / Deliverables

***To help you complete this assignment, we've listed the steps required. Read through them carefully to get a sense of the requirements for this code challenge, and then tackle them one by one.***

1. Before you start building the new functionality, make sure that you are able to create and view a new collection.

2. Let's build following an inside-out approach (Domain model to views). Begin by developing the classes required to persist Comics and associate them to a Collection. You should then be able to run the code below:

    ```Ruby
    comic.collection = collection
    comic.save
    collection.comics.first === comic # should return true
    collection = Collection.first
    comic = Comic.create(name:'Amazing Fantasy #15', description: 'First appearance of Spider-Man')
    comic.collection = collection
    comic.save
    collection.comics.first === comic # should return true
    ```

3. Set up validations for the comic and the collection:

   + A comic must have a name and a description.
   + A collection must have a unique name and an address.

4. Now that our backend domain model is properly setup we can build the user facing functionality. Adding this functionality will require you to develop code across many different parts of the application including routes, controllers and views.

Items needed to complete an application that works as described include:

+ `Comic` new, create, and show actions & corresponding views that display all shown data
+ `Collection` show page updated to list all its comics
+ All the links and forms to connect the models (the `Comic` show page should link back to its `Collection` show page)
