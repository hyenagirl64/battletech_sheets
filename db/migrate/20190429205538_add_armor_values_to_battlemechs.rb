class AddArmorValuesToBattlemechs < ActiveRecord::Migration[5.2]
  def change
    change_table :battlemechs do |t|
      #High level information
      t.string :name
      t.string :serial
      t.string :tech_base
      t.integer :year_made
      t.integer :battle_value
      t.integer :cost
      t.integer :tonnage
      
      #Base Stats
      t.integer :base_walk, default: 0
      t.integer :base_run, default: 0
      t.integer :base_jump, default: 0
      t.integer :base_heat_sinks, default: 0
      
      #structure and armor points
      t.integer :hp_head_internal, default: 1
      t.integer :hp_ct_internal, default: 1
      t.integer :hp_lt_internal, default: 1
      t.integer :hp_rt_internal, default: 1
      t.integer :hp_la_internal, default: 1
      t.integer :hp_ra_internal, default: 1
      t.integer :hp_ll_internal, default: 1
      t.integer :hp_rl_internal, default: 1
      
      t.integer :hp_head_armor, default: 0
      t.integer :hp_ct_front_armor, default: 0
      t.integer :hp_ct_rear_armor, default: 0
      t.integer :hp_lt_front_armor, default: 0
      t.integer :hp_lt_rear_armor, default: 0
      t.integer :hp_rt_front_armor, default: 0
      t.integer :hp_rt_rear_armor, default: 0
      t.integer :hp_la_armor, default: 0
      t.integer :hp_ra_armor, default: 0
      t.integer :hp_ll_armor, default: 0
      t.integer :hp_rl_armor, default: 0
    end
    
    add_index :battlemechs, :name
    add_index :battlemechs, [:serial, :name], unique: true, name: 'by_type'
    add_index :battlemechs, :battle_value
    add_index :battlemechs, :cost
    add_index :battlemechs, :tonnage
    add_index :battlemechs, :year_made
  end
end
