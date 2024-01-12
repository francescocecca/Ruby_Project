# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Destroy the join table first and book and author later

BookAuthor.destroy_all
BookAuthor.reset_pk_sequence

BookCategory.destroy_all
BookCategory.reset_pk_sequence

Book.destroy_all
Book.reset_pk_sequence

Author.destroy_all
Author.reset_pk_sequence

Category.destroy_all
Category.reset_pk_sequence

Author.create(
  [
    {
       name: "Carlos Ruiz Zafon",
     },
     {
       name: "J.K. Rowling",
     },
     {
       name:"Fabio Martini",
     },
  ]
)

author_carlos = Author.find_by(name: "Carlos Ruiz Zafon")
author_rowling = Author.find_by(name: "J.K. Rowling")
author_fabio = Author.find_by(name: "Fabio Martini")


Book.create(
  [
    {
      title:'Controvento',
      year: 2000,
    },
    {
      title: 'Harry Potter e i doni della morte',
      year: 2007,
    },
    {
      title: 'Harry Potter e il principe mezzosangue',
      year: 2005,
    },
    {
      title:'Harry Potter e il calice di fuoco',
      year: 2000,
    },
    {
      title: 'Il gioco dell angelo',
      year: 2008,
    },
    {
      title: 'Il prigioniero del cielo',
      year: 2011,
    },
    {
      title: 'Il labirinto degli spiriti',
      year: 2016,
    },
  ]
)

BookAuthor.create(
  [
    {
      book_id: 1,
      author_id: 3,
    },
    {
      book_id: 2,
      author_id: 2,
    },
    {
      book_id: 3,
      author_id: 2,
    },
    {
      book_id: 4,
      author_id: 2,
    },
    {
      book_id: 5,
      author_id: 1,
    },
    {
      book_id: 6,
      author_id: 1,
    },
    {
      book_id: 7,
      author_id: 1,
    }
  ]
)

Category.create(
  [
    {
      name: "Storia",
    },
    {
      name: "Fantasy",
    },
    {
      name: "Giallo"
    },
  ]
)

BookCategory.create(
  [
    {
      book_id: 1,
      category_id: 1
    },
    {
      book_id: 2,
      category_id: 2
    },
    {
      book_id: 3,
      category_id: 2
    },
    {
      book_id: 4,
      category_id: 2
    },
    {
      book_id: 5,
      category_id: 3
    },
    {
      book_id: 6,
      category_id: 3
    },
    {
      book_id: 7,
      category_id: 3
    },
  ]
)
