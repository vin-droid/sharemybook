class AddColumnToIdentity < ActiveRecord::Migration[5.0]
  def change
    add_column :identities, :name, :string
    add_column :identities, :email, :string
    add_column :identities, :nickname, :string
    add_column :identities, :image, :string
    add_column :identities, :phone, :string
    add_column :identities, :urls, :string
  end
end
