class TestController < ActionController::Base
    def index
        @a = Rails.root.join("app/assets/videos/sample.mp4").to_s
    end
end
