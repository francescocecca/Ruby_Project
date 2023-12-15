# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.destroy_all
Book.reset_pk_sequence

Book.create(
  [
    {
      title:'Controvento',
      year: 2020,
    },
    {
      title: 'Harry Potter e i doni della morte',
      year: 2007,
    },
    {
      title: 'Harry Potter e il principe mezzosangue',
      year: 2005
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
      year: 2011
    },
    {
      title: 'Il labirinto degli spiriti',
      year: 2016
    },
  ]

  Author.create(
    [
      {
        name: "Carlos Ruiz Zafon",
      },
      {
        name= "J.K. Rowling",
      },
      {
        name="Fabio Martini",
      },
    ]
  )

)
