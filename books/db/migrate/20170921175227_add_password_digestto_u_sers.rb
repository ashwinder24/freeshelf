class AddPasswordDigesttoUSers < ActiveRecord::Migration[5.1]
  
  def up 
      remove_column "users", "password"
      add_column "users", "password_digest", :string
      
  end

  def down
      add_column "users", "password", :string
      remove_column "users", "password_digest"
      
  end
    
end
