module Armatch
  class Categories < Grape::API

    resource :categories do
      desc "Return all categories information"
      get '/', jbuilder:'categories' do
        @categories = Category.all
      end
    end
  end
end
