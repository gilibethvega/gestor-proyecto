class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :firstdate
      t.date :lastdate
      t.string :status, default: 'proposal'

      t.timestamps
    end
  end
end
