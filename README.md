# Phase 3 project backend

This is the backend repository for the Chicken Lunchbox project. Chicken Lunchbox is a web application that offers a variety of fresh and delicious chicken products. This backend is built using the Sinatra framework and interacts with a SQLite database using Active Record for data storage and retrieval. The backend provides API routes to handle CRUD (Create, Read, Update, Delete) operations for products and categories.

API Routes
The backend provides several API routes to interact with the database and perform CRUD operations for products and categories.

Product Routes

GET /products: Get a list of all products.
POST /products: Create a new product.
PUT /products/:id: Update a specific product by ID.
DELETE /products/:id: Delete a specific product by ID.
Category Routes

GET /categories: Get a list of all categories along with their associated products.
GET /categories/:id/products: Get a list of products under a specific category.
POST /categories: Create a new category.
PUT /categories/:id: Update a specific category by ID.
DELETE /categories/:id: Delete a specific category by ID.

This is the frontend repository link for the Chicken Lunchbox project https://github.com/Onzere370/Phase-3-project.git