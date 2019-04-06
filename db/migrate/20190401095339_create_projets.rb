class CreateProjets < ActiveRecord::Migration[5.2]
  def change
    create_table :projets do |t|
      t.string :projet_img
      t.string :projet_title
      t.text :projet_description
      t.string :projet_link

      t.timestamps
    end
  end
end
