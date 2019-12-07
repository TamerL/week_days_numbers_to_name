DAYS_ABRV = ['Mon','Tue','Wed','Thu','Fri','Sat','Sun']
DAYS = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']

def to_s(exp)
  data = exp.split(',')
  result=[]
  case data.first
  when *Array("1".."7")
    x = 0
    data.each_with_index do |v,i|
      if x == 0
        # puts "if"
        result << DAYS_ABRV[v.to_i-1]
        # puts result
        x = 1
      else
        # puts "else"
        # puts i
        # puts v
        # puts "hi"
        # puts result[i-1]
        # puts result[i-1].split('-')
        y = result.last.split('-').last
        # puts y
        # puts result
        # puts "days abrv index of y #{y} #{DAYS_ABRV.index(y)}"
        # puts "Array(1..7).index(#{v}) - 1 #{Array("1".."7").index(v) - 1}"
        if DAYS_ABRV.index(y) == Array("1".."7").index(v) - 1
          # puts "hi #{result}"
          # puts result[0...i-1]
          #puts "#{result[i-1].split("-").first}-#{DAYS_ABRV[v.to_i]}"
          result = result[0..i-1] - [result.last] + ["#{result.last.split("-").first}-#{DAYS_ABRV[v.to_i-1]}"]
          # puts result
        else
          # puts "else else"
          result << DAYS_ABRV[v.to_i-1]
        end
      end
    end
  end
  return result.last
  #
  #   result
  #   result = data & Array("1".."7")
  #   x = 0
  #   result.each_with_index do |i,v|
  #     if i >= 1 && (Array("1".."7").index(v) == Array("1".."7")[]
  #
  #
  #     if x == 1 && result[i-1].split("-").length > 1
  #       y = result[i-1].split("-").last
  #       result = result[0...i-1] + "#{result[i-1].split("-").first}-#{v}" + result[i+1..-1] if result[i-1].split("-").length > 1
  #
  # end
end
