class CreateTiles < ActiveRecord::Migration
  def self.up
    create_table :tiles do |t|
      t.integer :map_id
      t.string :image_url
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :tiles
  end
end
