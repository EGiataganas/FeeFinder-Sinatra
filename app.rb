require 'sinatra/base'
require 'json'
 
class Fees < Sinatra::Base

#Non-money claims
	#this is for High Court
	get '/non-money-claims/high-court' do	
	amount = 480.to_i
	"amount is: £#{amount}."
	
	end

	#this is for County Court
	get '/non-money-claims/county-court' do	
	amount = 280.to_i
	"amount is: £#{amount}."
	end

	#this is for Possession Claims Online (PCOL)
	get '/non-money-claims/claims-online' do	
	amount = 250.to_i
	"amount is: £#{amount}."
	end

#General fees for civil proceedings
	#this is for Hearing fees
	get '/hearing-fees/small-claim/:amount' do
	amount = params[:amount].to_f
	 
	puts "amount is: £#{amount}."
	 
	fee = {}
	case amount
	when 0..300
	fee["fee"] = 25
	when 300.01..500
	fee["fee"] = 55
	when 500.01..1000
	fee["fee"] = 80
	when 1000.01..1500
	fee["fee"] = 115
	when 1500.01..3000
	fee["fee"] = 170
	when 3000..10000
	fee["fee"] = 335
	end
	fee.to_json
	end
	
	#this is for Fast track claim
	get '/hearing-fees/fast-track-claim' do
	
	amount = 545.to_i
	"amount is: £#{amount}."
	end

	#this is for Multi track claim
	get '/hearing-fees/multi-track-claim' do
	
	amount = 1090.to_i
	"amount is: £#{amount}."
	end

	
end
