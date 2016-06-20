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

  define_type Review.includes(:review_author) do
    field :body, :title
    field :review_author do
      field :name, :bio
    end
  end

  define_type ReviewAuthor.includes(:reviews) do
    field :name, :bio
    field :reviews do
      field :body, :title
    end
  end
end
