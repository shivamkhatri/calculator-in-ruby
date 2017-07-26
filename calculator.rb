#This is a simple program to perform some of the calculator suitable operations

class Calculator

  def self.+(x , y)
    float_format = x + y
    int_format = float_format.to_i
    return int_format if int_format == float_format
    return float_format
  end

  def self.-(x , y)
    float_format = x - y
    int_format = float_format.to_i
    return int_format if int_format == float_format
    return float_format
  end

  def self.*(x , y)
    float_format = x * y
    int_format = float_format.to_i
    return int_format if int_format == float_format
    return float_format
  end

  def self./(x , y)
    float_format = x.to_f / y.to_f
    int_format = float_format.to_i
    return int_format if int_format == float_format
    return float_format
  end

  def self.%(x , y)
    float_format = x % y
    int_format = float_format.to_i
    return int_format if int_format == float_format
    return float_format
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

case
  when operator == '+'
    puts Calculator.+(op1.to_f , op2.to_f )
  when operator == '-'
    puts Calculator.-(op1.to_f , op2.to_f )
  when operator == '*'
    puts Calculator.*(op1.to_f , op2.to_f )
  when operator == '/'
    puts Calculator./(op1.to_f , op2.to_f )
  when operator == '%'
    puts Calculator.%(op1.to_f , op2.to_f )
  else
    puts "Wrong Input"
end
