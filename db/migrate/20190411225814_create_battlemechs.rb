class CreateBattlemechs < ActiveRecord::Migration[5.2]
  def change
    create_table :battlemechs do |t|

      t.timestamps
    end
  end
end
