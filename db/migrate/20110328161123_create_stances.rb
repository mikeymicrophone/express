class CreateStances < ActiveRecord::Migration
  def self.up
    create_table :stances do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :stances
  end
end
