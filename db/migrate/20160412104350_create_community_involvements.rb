class CreateCommunityInvolvements < ActiveRecord::Migration
  def change
    create_table :community_involvements do |t|
      t.references :hacker, index: true, foreign_key: true, null: false
      t.references :community, index: true, foreign_key: true, null: false
      t.integer :kind, default: CommunityInvolvement.kinds[:technical_team]

      t.timestamps null: false
    end
  end
end
