module Armatch
  class Entries < Grape::API

    resource :entries do
      desc "Return one student entries"
      params do
        requires :student_id, type: Integer, desc: "student id"
      end
      get ':student_id' do
        @entries = Entry.where(student_id: params[:student_id])
      end

      desc "entries part time job"
      params do
        requires :offer_id, type: Integer, desc: "offer id"
      end
      post ':offer_id' do
        Entry.create(offer_id: params[:offer_id], student_id: 100)
        status 201
      end
#=begin
      desc "destroy entry information(cancel_flag changes to 1)"
      params do
        requires :offer_id, type: Integer, desc: "offer id"
      end
      put ':offer_id' do
        Entry.find_by(offer_id: params[:offer_id], student_id: 100).update!({cancel_flag: true})
        status 200
      end
#=end
    end
  end
end
