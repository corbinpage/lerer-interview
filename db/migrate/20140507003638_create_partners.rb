class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.text :description
      t.string :owner
      t.text :custom1
      t.text :custom2
      t.text :custom3

      t.timestamps
    end
  end
end
