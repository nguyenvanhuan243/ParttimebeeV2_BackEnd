class CreateNotificationadmins < ActiveRecord::Migration[5.0]
  def change
    create_table :notificationadmins do |t|
    	t.text :content
    	t.string :user
    	t.string :status
      t.timestamps
    end
  end
end
