class AddCitiesToDogsitters < ActiveRecord::Migration[6.1]
  def change
    add_reference :dogsitters, :cities, foreign_key: true
    add_reference :dogs, :cities, foreign_key: true
  end
end
