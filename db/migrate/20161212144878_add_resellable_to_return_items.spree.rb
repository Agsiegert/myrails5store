# This migration comes from spree (originally 20150508044622)
class AddResellableToReturnItems < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_return_items, :resellable, :boolean, default: true, null: false
  end
end
