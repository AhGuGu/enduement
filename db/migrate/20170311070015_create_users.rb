class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :salutation
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :email
      t.string :password_disgest

      t.timestamps
    end
  end
end
