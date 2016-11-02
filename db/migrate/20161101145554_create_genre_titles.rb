class CreateGenreTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :genre_titles do |t|
      t.references :title, foreign_key: true
      t.references :genre, foreign_key: true
    end
  end
end
