class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :pages
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
