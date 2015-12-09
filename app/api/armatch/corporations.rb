module Armatch
  class Corporations < Grape::API

    resource :corporations do
      desc "Return all Corporations information"
      get '/', jbuilder:'corporations' do
        @corporations = Corporation.all
      end

      desc "Return one Corporation"
      params do
        requires :id, type: Integer, desc: "Corporation id"
      end
      get ':id' do
        @corporations = Corporation.find(params[:id])
      end

      desc "create corporation"
      params do
        requires :name    , type: String, desc: "Corporation name"
        requires :outline , type: String, desc: "Corporation outline"
        requires :email   , type: String, desc: "Email"
        requires :password, type: String, desc: "Password"
      end
      post do
        require 'digest/sha1'

        Corporation.create!({
          name: params[:name],
          outline: params[:outline],
          email: params[:email],
          password: Digest::SHA1.hexdigest(params[:password])
        })
      end
    end
  end
end
