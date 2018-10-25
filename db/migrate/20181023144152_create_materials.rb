class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name

      t.timestamps
    end
    create_table :collections_materials, id: false do |t|
      t.belongs_to :collection, index: true
      t.belongs_to :material, index: true
    end
  end
end
