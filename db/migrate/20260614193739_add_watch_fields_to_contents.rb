class AddWatchFieldsToContents < ActiveRecord::Migration[8.1]
  def change
    add_column :contents, :watch_url, :string
    add_column :contents, :trailer_url, :string
    add_column :contents, :source, :string
  end
end
