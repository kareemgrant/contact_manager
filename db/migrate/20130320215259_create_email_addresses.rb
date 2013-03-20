class CreateEmailAddresses < ActiveRecord::Migration
  def change
    create_table :email_addresses do |t|
      t.string :name
      t.integer :person_id

      t.timestamps
    end
  end
end
