def log description, &block
  puts "Started the process #{description}"
  variable = block.call
  puts "#{description} is returning: #{variable}."
  puts "Finished the process #{description}"
end

log "Main program" do
  log "Subsequence 1" do
    log "Subsequence 2" do
      5
    end
    "Nothing to return"
  end
end
