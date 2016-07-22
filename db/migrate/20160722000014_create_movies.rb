class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_year
      t.string :production_company
      t.string :distributor
      t.string :director
      t.string :writer

      t.timestamps
    end
  end
end
