WDI Store Project

Goal: Design a web application that allows for managing products in a store. The
application should support the following features:

As an administrative user, I want to...

- See a list of all products
- Add a new product
- Click on a product to view details on that product
- Have a "view" link for each product
- Have an "edit" link for each product
- Have a "delete" link for each product
- Delete a product by clicking a delete button
- Update a product by clicking an edit button, changing data on a form, then submitting the form.

Write an app that does the following:

1. Displays a list of products
2. Has a home menu
3. Lets the user create a new product using a form & post by providing the NAME and
PRICE.
4. Displays a single product page, e.g. `/products/:id or /products/123`
5. Lets the user update a record by using a form & post to the product display url.
a. `POST /products/123` should update record 123.
6. Lets the user delete a record by using a form & delete to the url.
a. `POST /products/123/destroy` should delete record 123
7. Add a header menu to every page using either layout.erb OR a template partial (calling
erb:menuinside of another template) Bonus
1. Add an "on sale" checkbox to the edit form
2. Add an "on sale" checkbox to the checkbox for ON SALE to the Update action
3. Refactor the database connection initialization so that it appears ONLY ONCE in the
p r o g r a m ( i . e . d b = S Q L i t e 3 : : D a t a b a s e . n e w ) ( H i n t : before ... do )
4. Use the sinatra/rails convention for changing a POST to a DELETE and change sinatra
to respond to a delete instead
5. Include a template partial (i.e "erb :viewname") in one of your views.

Resources
[Simple Sinatra App?](http://www.danneu.com/posts/15-a-simple-blog-with-sinatra-and-active-record-some-useful-tools/)