class ChangeCurrencyType < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price_in_cents, :float
  end
end
