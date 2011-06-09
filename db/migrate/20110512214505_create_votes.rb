class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.belongs_to :candidate
      t.belongs_to :voter
      t.integer :support
      t.boolean :current
      t.boolean :authorized

      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
