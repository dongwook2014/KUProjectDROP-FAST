require 'csv'
require 'resolv'


csv_list = CSV.read("/home/core/Desktop/ttl/top500.csv")

domains = []

csv_list.each do |line|
	domains << line[1].gsub("/","")
end

ttls = []

domains.each do |domain|
	#puts domain

	begin
	dns = Resolv::DNS.new.getresource(domain, Resolv::DNS::Resource::IN::A)
	#puts dns.ttl
	ttls << dns.ttl
	rescue
	#	puts "Fail: #{domain}"
	end
end

lowest = ttls.min
highest = ttls.max
total = ttls.inject(:+)
len = ttls.length
average = total.to_f / len # to_f so we don't get an integer result
sorted = ttls.sort
median = len % 2 == 1 ? sorted[len/2] : (sorted[len/2 - 1] + sorted[len/2]).to_f / 2

puts "\n \n \n"
puts "Lowest: " + lowest.to_s
puts "Highest: " + highest.to_s
puts "Domains Resolved: " + len.to_s
puts "Average: " + average.to_s
puts "Median: " + median.to_s



