class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
      t.belongs_to :organization
      t.string :name
      t.text :description
      t.string :homepage
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
