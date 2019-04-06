class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :nav_logo
      t.string :car_img_competences
      t.string :car_img_projets
      t.string :car_img_appli
      t.string :car_title_competences
      t.string :car_title_projets
      t.string :car_title_appli
      t.text :car_description_competences
      t.text :car_description_projets
      t.text :car_description_appli
      t.string :pres_title
      t.text :pres_description
      t.string :pres_img
      t.boolean :is_index

      t.timestamps
    end
  end
end
