
=begin
代码块
def f1
	yield
end
def f2(&p)
	p.call
end
def f3(p)
	p.call
end

f1 { puts "f1"}
f2 { puts "f2"}
f3 ( proc { puts "f3"})
f3 ( Proc.new{puts "f3"})
f3 ( -> {puts "f3"})
f3 ( lambda{puts "f3"})
=end

#require_relative '/home/ruby/study/trig.rb'
#require_relative '/home/ruby/study/moral.rb'

=begin
引用其他rb文件中的模块
$LOAD_PATH << '.'
require 'trig.rb'		#.rb is no need
require 'moral'
require 'support'

class Decade
include Week
	no_of_yrs = 0
	def no_of_months
		puts Week::FIRST_DAY
		number = 10 * 12
		puts number
	end
end

d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
=end

=begin
ruby不支持多重继承，而是使用模块解决这个问题，Sample类中include模块A和模块B，
可以使用模块A和B中的方法
module A
	def a1
	end
	def a2
	end
end

module B
	def b1
	end
	def b2
	end
end

class Sample
	include A
	include B
	def s1
	end
end

samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1
=end