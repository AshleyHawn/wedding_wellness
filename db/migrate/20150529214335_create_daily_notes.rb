class CreateDailyNotes < ActiveRecord::Migration
  def change
    create_table :daily_notes do |t|
      t.string :bride_id
      t.string :day
      t.string :text

      t.timestamps

    end
  end
end
