# Allow overriding Redis URL via ENV vars
if ENV["REDIS_URL"].present?
  uri = URI.parse(ENV["REDIS_URL"])
  Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
else
  Resque.redis = Redis.new
end
