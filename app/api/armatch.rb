module Armatch
  class API < Grape::API
    format :json
    prefix :api
    resource :students do

      desc "Return all students information"
      get '/', jbuilder:'students' do
        @students = Student.all
      end
    end
  end
end
