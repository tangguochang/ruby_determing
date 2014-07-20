File.open('data.txt') do |f|
    while f.gets
        if /[^\x00-\x7F]/
            puts "A non-ascii character is found at line #{$.}"
            break
        end
    end
end