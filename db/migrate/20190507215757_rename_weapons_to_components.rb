class RenameWeaponsToComponents < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :weapons, :components
  end
  
  def self.down
    rename_table :components, :weapons
  end
end
