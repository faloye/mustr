class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :image
      t.boolean :rsvp
      t.boolean :admission
      t.string :organization
      t.date :date
      t.time :time
      t.string :phone
      t.string :email
      t.string :url

      t.timestamps null: false
    end
  end
end
