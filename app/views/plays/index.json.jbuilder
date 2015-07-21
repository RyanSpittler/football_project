json.array!(@plays) do |play|
  json.extract! play, :id, :team, :play_type, :direction, :yards
  json.url play_url(play, format: :json)
end
