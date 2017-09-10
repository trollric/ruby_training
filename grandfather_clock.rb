# Executes a block for every passed hour (1-12)
def grandfather_clock &block
  hour = Time.now.hour
  if hour > 12
    hour -= 12
  elsif hour == 0
    hour = 12
  end

  hour.times do
    block.call
  end
end

grandfather_clock do
  puts "Ding dinelingeding dingelingeding dingelinge ding dong dong"
  puts "Begravningsklockor klämta"
  puts ""
end
