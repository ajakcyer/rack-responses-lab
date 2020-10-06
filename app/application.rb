class Application

    def call(env)
        resp = Rack::Response.new

        if Time.now.hour.to_i > 12
            resp.write "Good Afternoon!"
        else Time.now.hour.to_i < 12
            resp.write "Good Morning!"
        end

        resp.finish
    end
end