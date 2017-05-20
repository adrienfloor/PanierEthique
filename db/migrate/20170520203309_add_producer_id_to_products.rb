class AddProducerIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :producer
  end
end
