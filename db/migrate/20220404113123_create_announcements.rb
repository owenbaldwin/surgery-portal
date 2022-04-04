class CreateAnnouncements < ActiveRecord::Migration[6.0]
  def change
    create_table :announcements do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :announcement_content
      t.date :post_date
      t.time :post_time

      t.timestamps
    end
  end
end
