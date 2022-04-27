class CnpjToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :"cpf/cnpj", :integer
  end
end
