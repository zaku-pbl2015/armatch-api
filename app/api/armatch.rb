module Armatch
  class API < Grape::API
    resource :students do
      get '/', jbuilder:'students' do
        @students = Student.all
      end
    end
  end
end
