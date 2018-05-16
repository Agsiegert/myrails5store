class ProductData < Obj
  attribute :body, :widgetlist
  attribute :product_id, :string

  def self.scrivito_id_for_product(product)
    Digest::SHA1.hexdigest("product-#{product.id}")[0...16]
  end

  def self.create_for(product)
    create(_id: scrivito_id_for_product(product), product_id: product.id)
  end

  def self.find_for(product)
    find(scrivito_id_for_product(product))
  end

  

end
