class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :Name
      t.numeric :Age
      t.string :Gender
      t.string :Email
      t.string :Address

      t.timestamps
    end
  end
end
