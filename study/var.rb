
def block_args(&p)
  puts p.class
  puts p
  p.call
  block_yield &p 
end

def block_yield
  puts 'yield'
  yield
end

block_args {puts 'hahaha'} 