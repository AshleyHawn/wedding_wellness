class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :coach_name

      t.timestamps

    end
  end
end
