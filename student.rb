class Student
  attr_accessor :first_name, :last_name, :primary_phone_nymber

  def introduction
    puts "Hi, I am #{first_name}!"
  end

  def response(name)
    puts "Hi #{first_name}! I am #{name} :)"
  end

  def favorite_number
    7
  end
end

frank = Student.new
frank.first_name = "Frank"
frank.introduction
frank.response("Katarina")
puts "#{frank.first_name}'s favorite number = #{frank.favorite_number}'"
