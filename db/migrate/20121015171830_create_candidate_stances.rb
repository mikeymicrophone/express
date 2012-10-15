class CreateCandidateStances < ActiveRecord::Migration
  def change
    create_table :candidate_stances do |t|
      t.belongs_to :candidate
      t.belongs_to :issue_stance
      t.text :description

      t.timestamps
    end
    add_index :candidate_stances, :candidate_id
    add_index :candidate_stances, :issue_stance_id
  end
end
