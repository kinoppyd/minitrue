class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')

    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :avatar
      t.string :profile
      t.string :email
      t.string :twitter
      t.string :github

      # ActiveRecord::Bitemporal
      t.uuid :bitemporal_id
      t.datetime :valid_from
      t.datetime :valid_to
      t.datetime :transaction_from
      t.datetime :transaction_to

      t.timestamps
    end
    add_index :users, :bitemporal_id
    add_index :users, :valid_from
    add_index :users, :valid_to
    add_index :users, :transaction_from
    add_index :users, :transaction_to
  end
end
