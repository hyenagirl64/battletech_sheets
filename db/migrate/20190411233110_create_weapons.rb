class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :types
      t.string :heat
      t.string :damage
      t.integer :minrange
      t.integer :shrtrange
      t.integer :medrange
      t.integer :longrange
      t.integer :ammoperton
      t.integer :tohitmod

      t.timestamps
    end
  end
end
