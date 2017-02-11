require 'open-uri'
require 'JSON'
require 'sinatra'

get '/stop/:stopid/:busno' do
	stopid = params['stopid']
	busno = params['busno']
	response = open('https://data.dublinked.ie/cgi-bin/rtpi/realtimebusinformation?stopid='+stopid.to_s).read
	buses = Array.new 
	r = Array.new
	data = JSON.parse(response)
	for i in 0..data["results"].length-1
		buses.push(data["results"][i]["route"])
	end
	for i in 0..buses.length-1
		if buses.include? busno and busno==data["results"][i]["route"]
			r.push("{\"route\":\"#{data["results"][i]["route"]}\",\"destination\":\"#{data["results"][i]["destination"]}\",\"due\":\"#{data["results"][i]["departureduetime"]}\"}".to_s)
		end
	end
	return"{\"stopid\":\"#{stopid}\",\"errorcode\":\"#{data["errorcode"]}\",\"data\":\"#{r}\"}"
end

get '/stop/:stopid' do
	stopid = params['stopid']
	response = open('https://data.dublinked.ie/cgi-bin/rtpi/realtimebusinformation?stopid='+stopid.to_s).read
	buses = Array.new 
	r = Array.new
	data = JSON.parse(response)
	for i in 0..data["results"].length-1
		buses.push(data["results"][i]["route"])
		r.push("{\"route\":\"#{data["results"][i]["route"]}\",\"destination\":\"#{data["results"][i]["destination"]}\",\"due\":\"#{data["results"][i]["departureduetime"]}\"}".to_s)
	end
	return"{\"stopid\":\"#{stopid}\",\"errorcode\":\"#{data["errorcode"]}\",\"data\":\"#{r}\"}"
end