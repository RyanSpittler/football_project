class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :team
      t.string :play_type
      t.string :direction
      t.integer :yards

      t.timestamps null: false
    end
  end
end
