module Armatch
  class Students < Grape::API

    resource :students do
      desc "Return all students information"
      get '/', jbuilder:'students' do
        @students = Student.all
      end

      desc "Return one student"
      params do
        requires :id, type: Integer, desc: "Student id"
      end
      get ':id' do
        @students = Student.find(params[:id])
      end

=begin
#学生の情報更新API途中
      desc "update student"
      params do
        requires :id, type Integer, desc: "Student id"
      end
      post ':id' do
      end
=end
    end
  end
end
