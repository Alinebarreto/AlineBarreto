module StoreConfig
    class Store
        include HTTParty
        base_uri 'http://localhost:3030'
        format :json
        headers 'Content-Type' => 'application/json'
        
        def post_store(param)
            self.class.post('/stores', body: param)
        end
       
        def get_store(param)
            self.class.get('/stores', body: param)
        end

        def delete_store(param)
            self.class.delete('/stores', body: param)
        end

    end
    
end