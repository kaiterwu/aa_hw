class PeopleName < ActiveRecord::Migration[7.0]
  def change
    rename_table :persons, :people
  end
end
