class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :number
      t.integer :person_id

      t.timestamps
    end

    add_index :phone_numbers, :id
  end
end
