class CreateCompetences < ActiveRecord::Migration[5.2]
  def change
    create_table :competences do |t|
      t.string :comp_img
      t.string :comp_title

      t.timestamps
    end
  end
end
