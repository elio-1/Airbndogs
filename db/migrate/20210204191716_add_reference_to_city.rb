class AddReferenceToCity < ActiveRecord::Migration[6.1]
  def change
    add_reference :cities, :dogsitters, foreign_key: true
    add_reference :cities, :dogs, foreign_key: true
  end
end
