class CreateFichas < ActiveRecord::Migration[7.0]
  def change
    create_table :fichas do |t|
      t.string :nombre_fic

      t.timestamps
    end
  end
end
