class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :school
      t.string :name
      t.string :logo
      t.string :color
      t.string :motto

      t.timestamps null: false
    end
  end
end
