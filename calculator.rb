#This is a simple program to perform some of the calculator suitable operations

class Calculator

  attr_accessor :val

  def initialize(val)
    @val = val.to_f
  end

  @@print_format = lambda{ |float_format |
    int_format = float_format.to_i
  return int_format if int_format == float_format
  return float_format } #this lambda function will return integer format data if there are leading zeros after decimal

  def add(x)
    float_format = @val + x
    return @@print_format.call(float_format)
  end

  def subtract(x)
    float_format = @val - x
    return @@print_format.call(float_format)
  end

  def multiply(x)
    float_format = @val * x
    return @@print_format.call(float_format)
  end

  def divide(x)
    float_format = @val / x
    return @@print_format.call(float_format)
  end

  def remainder(x)
    float_format = @val % x
    return @@print_format.call(float_format)
  end

end

puts %q{
  Calculator:
  You can use the following
  Available operators:
  1 + 2
  1 - 2
  1 * 2
  1 / 2
  1 % 2
}

print "Enter the expression of the type \n operand1 operator operand2 \n"

op1 , operator , op2 = gets.chomp.split(" ")

object1 = Calculator.new(op1)
object2 = Calculator.new(op2)


case
  when operator == '+'
    puts object1.add(object2.val )
  when operator == '-'
    puts object1.subtract(object2.val )
  when operator == '*'
    puts object1.multiply(object2.val )
  when operator == '/'
    puts object1.divide(object2.val )
  when operator == '%'
    puts object1.remainder(object2.val )
  else
    puts "Wrong Input"
end
