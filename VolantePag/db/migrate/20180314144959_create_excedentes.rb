class CreateExcedentes < ActiveRecord::Migration
  def change
    create_table :excedentes do |t|
      t.integer :Codigo_Empleado
      t.string :Nombre
      t.float :Monto
      t.string :Eleccion

      t.timestamps null: false
    end
  end
end
