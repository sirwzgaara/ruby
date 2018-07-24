#encoding:gbk

=begin
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

#$LOAD_PATH << '.'
#require 'trig.rb'
#require 'moral'

require_relative '/home/ruby/study/trig.rb'
require_relative '/home/ruby/study/moral.rb'

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)