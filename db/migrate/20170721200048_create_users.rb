class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    # I was lazy and didn't make a new app, cleanup first 
    drop_table :users
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
