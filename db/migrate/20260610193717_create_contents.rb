class CreateContents < ActiveRecord::Migration[8.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.string :thumbnail
      t.string :video_url
      t.string :content_type
      t.string :genre

      t.timestamps
    end
  end
end
