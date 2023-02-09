class Persons < ActiveRecord::Migration[7.0]
  def change
    rename_table :person, :persons
  end
end
