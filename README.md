
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

## Deliverables

Implement the following features in this repository. Each item below is required for a complete submission:

1. **Set Up Comic Model and Associations**
    + Create a `Comic` model and database table with columns for `name`, `description`, and a `collection_id` foreign key.

2. **Implement Model Validations**
    + In the `Comic` model, require presence of `name` and `description`.
    + In the `Collection` model, require presence of `name` and `address`, and ensure `name` is unique.
    + Display validation errors in the relevant forms when a user submits invalid data.

3. **RESTful Routes and Controller Actions for Comics**
    + Add RESTful routes for `comics` (at minimum: `new`, `create`, `show`, and `destroy`).
    + Implement controller actions for `new`, `create`, `show`, and `destroy` in a `ComicsController`.

4. **Build and Display Forms for Comics**
    + Add a form to create a new comic. This form should be accessible from a `Collection` show page via a clearly labeled link or button (e.g., "Add Comic").
    + The form must include fields for `name` and `description`, and must associate the new comic with the current collection.
    + After submission, redirect to the new comic's show page if successful, or re-render the form with errors if not.

5. **Update Collection Show Page**
    + On the `Collection` show page, display a list of all comics that belong to that collection. Each comic should be shown with its name and description.
    + Each comic in the list should link to its individual show page.
    + Include a link or button to add a new comic to this collection.

6. **Comic Show Page**
    + Create a show page for each comic that displays its name, description, and the name of its collection.
    + Include a link back to the parent collection's show page.
    + Include a button or link to delete the comic, which should remove it from the database and redirect back to the parent collection's show page.

7. **Database Migrations**
    + Create and run all necessary migrations to add the `comics` table and set up the association with `collections`.
    + Ensure the schema reflects all required columns and relationships.

8. **Rails Console Usage**
    + You should be able to create, query, and associate `Collection` and `Comic` records in the Rails console using ActiveRecord methods.
    + Test that validations and associations work as expected in the console.
