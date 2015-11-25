module Armatch
  class API < Grape::API
    format :json
    #prefix :apiでアドレスがlocalhost:3000/api/...となる
    prefix :api
    resource :students do
      desc "Return all students information"
      get '/', jbuilder:'students' do
        @students = Student.all
      end

      desc "Return one student"
      params do
        requires :id, type: Integer, desc: "Person id"
      end
      get ':id' do
        @students = Student.find(params[:id])
      end
    end
  end
end
