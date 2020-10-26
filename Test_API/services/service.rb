module ServiceConfig
    class Service
        include HTTParty
        base_uri 'http://localhost:3030'
        format :json
        headers 'Content-Type' => 'application/json'
        
        def post_service(param)
            self.class.post('/services', body: param)
        end
       
        def get_service(param)
            self.class.get('/services', body: param)
        end

        def delete_service(param)
            self.class.delete('/services', body: param)
        end

    end
    
end