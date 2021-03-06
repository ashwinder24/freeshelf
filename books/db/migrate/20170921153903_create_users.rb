class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, :default => "", :null => false
      t.string :password
        t.timestamps
    end
  end

    
  def down
      drop_table :users
  end
    
end
