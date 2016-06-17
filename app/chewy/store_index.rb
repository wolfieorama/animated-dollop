class StoreIndex < Chewy::Index
  define_type Product.includes(:vendor) do
    field :name, :description
    field :vendor do
      field :name
      field :description
    end
  end

  define_type Vendor.includes(:products) do
    field :name, :description
    field :products do
      field :name, :description
    end
  end
end
