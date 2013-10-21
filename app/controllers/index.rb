get '/' do
  erb :index
end

post '/user_name' do
  @twitter_user = TwitterUser.create(user_name: params[:user_name])
  @tweets = []
 Twitter.user_timeline("ebethme", :count => 10).map do |tweet|
   @tweets << "#{tweet.text}"
  end

erb :recent_tweets


end
