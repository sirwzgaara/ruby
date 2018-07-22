
$global_variable = 10    #定义全局变量的方法

class Class1
	def print_global
		puts "全局变量在Class1 中输出为#$global_variable"
	end
end

class Class2
	def print_global
		puts "全局变量在Class2中输出为#$global_variable"
	end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
