class AddPublicEmailToHacker < ActiveRecord::Migration
  def change
    add_column :hackers, :show_email, :boolean, default: false
  end
end
