module ModProducts
    class Products
        include HTTParty
        base_uri 'http://localhost:3030'
        format :json
        headers 'Content-Type' => 'application/json'
        
        def post_products(param)
            self.class.post('/products', body: param)
        end
       
        def get_products(param)
            self.class.get('/products', body: param)
        end

        def delete_products(param)
            self.class.delete('/products', body: param)
        end

    end
    
end