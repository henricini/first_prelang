class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
