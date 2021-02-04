class CreateStrolls < ActiveRecord::Migration[6.1]
  def change
    create_table :strolls do |t|
      t.date :date
      t.belongs_to :dogsitter, foreign_key: true
      t.belongs_to :dog, foreign_key: true
      t.timestamps
    end
  end
end
