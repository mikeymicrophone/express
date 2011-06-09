class CreateBaselines < ActiveRecord::Migration
  def self.up
    create_table :baselines do |t|
      t.belongs_to :election
      t.belongs_to :voter
      t.integer :level
      t.boolean :current

      t.timestamps
    end
  end

  def self.down
    drop_table :baselines
  end
end
