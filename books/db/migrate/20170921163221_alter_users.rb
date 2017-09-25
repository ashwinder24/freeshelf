class AlterUsers < ActiveRecord::Migration[5.1]
  def change
      add_column("users","username",:string,:after => "email")
      add_index("users", "username")
  end
end
