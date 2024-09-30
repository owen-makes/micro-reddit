class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.text :bio

      t.timestamps
    end
  end
end
