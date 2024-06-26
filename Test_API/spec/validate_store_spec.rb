describe 'test store' do
     it 'post store' do
        @body =
        {      
            name: 'New Store',
            type: 'BigBox',
            address: '123 Fake St',
            address2: '',
            city: 'Springfield',
            state: 'MN',
            zip: '55123',
            lat: 44.969658,
            lng: -93.449539,
            hours: 'Mon: 10-9; Tue: 10-9; Wed: 10-9; Thurs: 10-9; Fri: 10-9; Sat: 10-9; Sun: 10-8'
        }.to_json
            #puts @body
            @request = StoreConfig::Store.new.post_store(@body)
            #puts @request.parsed_response
            expect(@request.code).to eq 201
    end

end