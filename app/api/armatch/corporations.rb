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
