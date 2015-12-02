module Armatch
  class Offers < Grape::API

    resource :offers do
      desc "Return all offers information"
      get '/', jbuilder:'offers' do
        @offers = Offer.all
      end

      desc "Return one offers"
      params do
        requires :id, type: Integer, desc: "Offer id"
      end
      get ':id' do
        @offers = Offer.find(params[:id])
      end

=begin
#企業の情報更新API途中
      desc "update Corporation"
      params do
        requires :id, type Integer, desc: "Corporation id"
      end
      post ':id' do
      end
=end
    end
  end
end
