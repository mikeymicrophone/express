class CreateIssueStances < ActiveRecord::Migration
  def self.up
    create_table :issue_stances do |t|
      t.belongs_to :issue
      t.belongs_to :stance
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :issue_stances
  end
end
