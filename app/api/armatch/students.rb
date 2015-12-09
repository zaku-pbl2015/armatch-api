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

      desc "create student"
      params do
        requires :name    , type: String, desc: "Student name"
        requires :email   , type: String, desc: "Student email"
        requires :password, type: String, desc: "password"
        requires :skill   , type: String, desc: "skill"
        requires :apeal   , type: String, desc: "apeal point"
      end
      post do
        require 'digest/sha1'

        Student.create!({
          name:     params[:name],
          email:    params[:email],
          password: Digest::SHA1.hexdigest(params[:password]),
          skill:    params[:skill],
          apeal:    params[:apeal]
        })
      end

      desc "update student"
      params do
        requires :id      , type: Integer, desc: "Student id"
        requires :name    , type: String , desc: "Student name"
        requires :email   , type: String , desc: "Student email"
        requires :skill   , type: String , desc: "skill"
        requires :apeal   , type: String , desc: "apeal point"
      end
      put ':id' do
        Student.find(params[:id]).update!({
          name:     params[:name],
          email:    params[:email],
          skill:    params[:skill],
          apeal:    params[:apeal]
        })
      end
    end
  end
end
