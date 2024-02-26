class CreateLocation < ActiveRecord::Migration[7.1]
  def change
    create_table :location do |t|

      t.timestamps
    end
  end
end
