def call_proc(my_proc)
  count = 500
  my_proc.call
end
count   = 1
my_proc = Proc.new { puts count }
p call_proc(my_proc) # What does this print?


a = [1,2,3]
b = [4,5,6]
c = a + b
#c = a.concat(b)
p a,b,c