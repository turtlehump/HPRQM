class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name, null: false, unique: true
      t.date :start_date#, null: false
      t.date :end_date#, null: false
      t.string :ppm_id


      t.timestamps null: false
    end
  end
end
