class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :title
      t.string :author
      t.string :source
      t.text :description
      t.date :origin_date
      t.string :link

      t.timestamps null: false
    end
  end
end
