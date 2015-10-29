class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :sdlcm_release_id, null: false, unique: true
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :name, null: false
      t.references :project, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
