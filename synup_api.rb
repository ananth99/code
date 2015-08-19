require 'json'
require 'rest-client'
require 'telegram_bot'

TELEGRAM_TOKEN = '135203734:AAEO7AIYWR7z9sjaxyG-93hZLxb_IMWjZX4'

url = "http://localhost:3000/"
env = url + "api/v1/businesses/"
data = {"user[email]" => "customer1@synup.com","user[password]" => "customer123"}
res = RestClient.post url + 'users/sign_in.json', data
parseresponse  = JSON.parse(res)
token = parseresponse["auth_token"]
# newres = RestClient.get newlocation,:params => {:auth_token => token,:user_email => "admin@synup.com"}

locations_json = RestClient.get url + 'api/v1/businesses.json', params: {auth_token: token, user_email: 'customer1@synup.com'}
locations = JSON.parse(locations_json)
location_count = locations['result'].size.inspect

synup_bot = TelegramBot.new(token: TELEGRAM_TOKEN)
puts synup_bot.inspect
synup_bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(synup_bot)
  message.reply do |reply|
    case command
    when /locationcount/
      reply.text = "customer1@synup.com, you have #{location_count} locations on Synup."
    when /listings/

    when /reviews/
      puts "command entered = #{command}"
    else
      reply.text = "#{message.from.first_name}, have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(synup_bot)
  end 
end

def get_reviews_by_site(loc_id)
  
end

def get_listing_details(loc_id)
  
end
