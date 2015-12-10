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

      desc "create offer"
      params do
        requires :title         , type: String , desc: "Offer title"
        requires :detail        , type: String , desc: "Offer detail"
        requires :corporation_id, type: Integer, desc: "Corporation id"
        optional :wanted        , type: Boolean, desc: "Offer wanted"
        requires :limited       , type: String , desc: "Offer limited"
        requires :category_id   , type: Integer, desc: "Category ID"
      end
      post do
        Offer.create!({
          title:          params[:title],
          detail:         params[:detail],
          corporation_id: params[:corporation_id],
          wanted:         params[:wanted].nil? ? true : params[:wanted],
          limited:        params[:limited],
          category_id:    params[:category_id]
        })
      end

      desc "update offer"
      params do
        requires :id            , type: Integer, desc: "Offer ID"
        requires :title         , type: String , desc: "Offer title"
        requires :detail        , type: String , desc: "Offer detail"
        requires :corporation_id, type: Integer, desc: "Corporation id"
        requires :wanted        , type: Boolean, desc: "Offer wanted"
        requires :limited       , type: String , desc: "Offer limited"
        requires :category_id   , type: Integer, desc: "Category ID"
      end
      put ':id' do
        Offer.find(params[:id]).update!({
          title:          params[:title],
          detail:         params[:detail],
          corporation_id: params[:corporation_id],
          wanted:         params[:wanted],
          limited:        params[:limited],
          category_id:    params[:category_id]
        })
      end
    end
  end
end
