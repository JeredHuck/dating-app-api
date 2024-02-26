class AddPolymorphicAssoctiationToLocation < ActiveRecord::Migration[7.1]
  def change
    add_reference :location, :locatable, polymorphic: true, null: false
  end
end
