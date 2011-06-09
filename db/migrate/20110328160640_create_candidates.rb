class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.belongs_to :election
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
