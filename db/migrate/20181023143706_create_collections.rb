class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.string :name
      t.string :address
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
