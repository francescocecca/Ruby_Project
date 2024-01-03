# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Author.destroy_all
Author.reset_pk_sequence

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

Book.destroy_all
Book.reset_pk_sequence

Book.create(
  [
    {
      title:'Controvento',
      year: 2000,
      author: author_fabio
    },
    {
      title: 'Harry Potter e i doni della morte',
      year: 2007,
      author: author_rowling
    },
    {
      title: 'Harry Potter e il principe mezzosangue',
      year: 2005,
      author: author_rowling
    },
    {
      title:'Harry Potter e il calice di fuoco',
      year: 2000,
      author: author_rowling
    },
    {
      title: 'Il gioco dell angelo',
      year: 2008,
      author: author_carlos
    },
    {
      title: 'Il prigioniero del cielo',
      year: 2011,
      author: author_carlos
    },
    {
      title: 'Il labirinto degli spiriti',
      year: 2016,
      author: author_carlos
    },
  ]
)

Category.destroy_all
Category.reset_pk_sequence

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
