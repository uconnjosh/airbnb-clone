class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.string :location
      t.belongs_to :user

    end
  end
end
