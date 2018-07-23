
class Customer
	@@no_of_numbers = 0
	def initialize(id, name, addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end
	def display_detials()
		puts "Customer id #@cust_id"
		puts "Customer nmae #@cust_name"
		puts "Customer addr #@cust_addr"
	end
	def total_no_of_customers()
		@@no_of_numbers += 1
		puts "total num is #@@no_of_numbers"
	end
end

cust1 = Customer.new(1,2,3)
cust2 = Customer.new(4,5,6)
cust1.total_no_of_customers()
cust2.total_no_of_customers()