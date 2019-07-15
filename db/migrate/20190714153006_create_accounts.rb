class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :amazon_seller_id
      t.string :mws_auth_token

      t.timestamps
    end
  end
end
