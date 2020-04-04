class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :programmer, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
