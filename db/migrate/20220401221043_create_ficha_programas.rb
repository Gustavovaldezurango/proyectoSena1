class CreateFichaProgramas < ActiveRecord::Migration[7.0]
  def change
    create_table :ficha_programas do |t|
      t.datetime :fecha
      t.boolean :estado
      t.references :ficha, null: false, foreign_key: true
      t.references :programa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
