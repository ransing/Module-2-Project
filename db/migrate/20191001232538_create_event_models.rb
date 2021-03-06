class CreateEventModels < ActiveRecord::Migration[6.0]
  def change
    create_table :event_models do |t|
      t.belongs_to :model, null: false, foreign_key: true
      t.belongs_to :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
