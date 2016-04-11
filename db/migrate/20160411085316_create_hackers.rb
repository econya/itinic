class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.string :slug
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
