class AddXyToTiles < ActiveRecord::Migration
  def self.up
    add_column :tiles, :x, :integer
    add_column :tiles, :y, :integer
    add_index :tiles, [:map_id, :x, :y], :unique => true
  end

  def self.down
    remove_index :tiles, [:map_id, :x, :y]
    remove_column :tiles, :x, :integer
    remove_column :tiles, :y, :integer
  end
end
