class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.references :hacker, index: true, foreign_key: true
      t.references :technology, index: true, foreign_key: true
      t.integer :assessment
      t.integer :level

      t.timestamps null: false
    end
  end
end
