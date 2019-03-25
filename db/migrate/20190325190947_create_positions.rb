class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :title
      t.string :description
      t.belongs_to :person
      t.belongs_to :employers
      t.belongs_to :city
      t.datetime :start
      t.datetime :finish
    end
  end
end
