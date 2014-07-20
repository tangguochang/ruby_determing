File.open('data.txt') do |file|
    file.each_line.with_index do |line, index|
        if /[^\x00-\x7F]/ =~ line
            puts "A non-ascii character is found at line #{index + 1}"
            break
        end
    end
end
