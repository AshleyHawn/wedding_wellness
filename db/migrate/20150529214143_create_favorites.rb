class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :bride_id

      t.timestamps

    end
  end
end
