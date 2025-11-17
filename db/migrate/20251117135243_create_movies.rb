class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :release_year

      t.timestamps
    end
  end
end
