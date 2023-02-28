class CreateShirts < ActiveRecord::Migration[7.0]
  def change
    create_table :shirts do |t|

      t.timestamps
    end
  end
end
