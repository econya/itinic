class CreateToolUses < ActiveRecord::Migration
  def change
    create_table :tool_uses do |t|
      t.references :community, index: true, foreign_key: true
      t.references :technology, index: true, foreign_key: true
      t.integer :assessment
      t.integer :task

      t.timestamps null: false
    end
  end
end
