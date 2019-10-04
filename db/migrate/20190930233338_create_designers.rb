class CreateDesigners < ActiveRecord::Migration[6.0]
  def change
    create_table :designers do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
