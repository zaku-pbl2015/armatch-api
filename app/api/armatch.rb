module Armatch
  class API < Grape::API
    format :json
    #prefix :apiでアドレスがlocalhost:3000/api/***となる
    prefix :api

    # mout API::localhost:3000/api/***で作るAPIを記述
    mount API::Students
  end
end
