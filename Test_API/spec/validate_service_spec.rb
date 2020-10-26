describe 'test service' do
     it 'post service' do
        @body =
        {      
            name: 'New Service'
        }.to_json
            # puts @body
            @request = ServiceConfig::Service.new.post_service(@body)
            # puts @request.parsed_response
            expect(@request.code).to eq 201
    end

end