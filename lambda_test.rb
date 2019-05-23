times_two =->(x) {x*2}
a = p times_two.call(2)
puts a

x=1
y=1

t1 = Proc.new {puts "hello"}
t1.call