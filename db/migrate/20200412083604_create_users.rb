class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :role, default: 'member'
      t.string :password_digest
      t.references :band, foreign_key: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
