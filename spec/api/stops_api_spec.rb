require 'rails_helper'

describe V1::StopsApi do

  describe 'GET /api/v1/stops' do

    it 'returns a list of stops' do
      Stop.create name: 'test'

      get '/api/v1/stops'

      expect(response.status).to eq(200)
      parsed = JSON.parse(response.body)
      expect(parsed.length).to eq(1)
      expect(parsed[0].keys).to eq(['name'])
    end

  end

end