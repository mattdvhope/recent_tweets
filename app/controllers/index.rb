get '/' do
  erb :index
end

get '/:username' do
  erb :recent_tweets

end
