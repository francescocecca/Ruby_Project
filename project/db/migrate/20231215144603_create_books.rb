class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.belongs_to :author
      t.timestamps
    end
  end
end
