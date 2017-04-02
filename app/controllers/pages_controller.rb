class PagesController < ApplicationController
    # 會去找views/pages底下的hello.html.erb
    def hello
        #render plain: "<h1>你好啊</h1>"
         render json: params["name"]
    end
end
