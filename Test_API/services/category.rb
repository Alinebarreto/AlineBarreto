module CategoryConfig
    class Category
        include HTTParty
        base_uri 'http://localhost:3030'
        format :json
        headers 'Content-Type' => 'application/json'
        
        def post_category(param)
            self.class.post('/categories', body: param)
        end
       
        def get_category(param)
            self.class.get('/categories', body: param)
        end

        def delete_category(param)
            self.class.delete('/categories', body: param)
        end

    end
    
end