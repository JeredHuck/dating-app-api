class CreateLocation < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|

      t.timestamps
    end
  end
end
