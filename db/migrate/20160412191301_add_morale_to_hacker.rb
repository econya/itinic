class AddMoraleToHacker < ActiveRecord::Migration
  def change
    add_column :hackers, :morale, :integer
  end
end
