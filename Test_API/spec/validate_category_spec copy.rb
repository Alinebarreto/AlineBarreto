describe 'test category' do
     it 'post category' do
        @body =
        {      
            id: 'pcmcat12345',
            name: 'New Category'
        }.to_json
            puts @body
            @request = CategoryConfig::Category.new.post_category(@body)
            puts @request.parsed_response
            expect(@request.code).to eq 201
    end

end