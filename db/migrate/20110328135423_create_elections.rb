class CreateElections < ActiveRecord::Migration
  def self.up
    create_table :elections do |t|
      t.belongs_to :office
      t.datetime :start_date
      t.datetime :end_date
      t.string :supervisor

      t.timestamps
    end
  end

  def self.down
    drop_table :elections
  end
end
