class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :title
      t.string :description
      t.belongs_to :person
      t.belongs_to :city
      t.belongs_to :employer
      t.datetime :start_date
      t.datetime :finish_date
    end
  end
end
