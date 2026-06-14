class AddImdbIdToContents < ActiveRecord::Migration[8.1]
  def change
    add_column :contents, :imdb_id, :string
  end
end
