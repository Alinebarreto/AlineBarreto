describe 'test product' do
    #to do 
    #convert to json return of openstruct
    #payload = OpenStruct.new(YAML.load_file("#{File.expand_path('../', File.dirname(__FILE__))}/template/products.yml"))
    it 'post product' do
        @body =
        {
            name: 'New Product',
	        type: 'Hard Good',
	        upc: '12345676',
	        price: 99,
	        description: 'This is a placeholder request for creating a new product.',
	        model: 'NP12345'
        }.to_json
            # puts @body
            @request = ModProducts::Products.new.post_products(@body)
            # puts @request.parsed_response
            expect(@request.code).to eq 201
    end
end