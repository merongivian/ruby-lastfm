class Lastfm
  module MethodCategory
    class Geo < Base
      regular_method(
        :get_top_artists,
        :get_top_tracks,
        :optional => [
          [:location, nil],
          [:distance, nil],
          [:limit, nil],
          [:page, nil]
        ]
      ) do |response|
        response.xml['events']['event']
      end
    end
  end
end
