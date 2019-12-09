DAYS_ABRV = ['Mon','Tue','Wed','Thu','Fri','Sat','Sun']
DAYS = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']

def convert_to_string_from(week_days_numbers)
  data = week_days_numbers.split(',')
  result=[]
  case data.first
  when *Array("1".."7")
    data.map! {|data_element| data_element.to_i}
  when *DAYS_ABRV
    data.map! {|data_element| DAYS_ABRV.index(data_element)+1}
  when *DAYS
    data.map! {|data_element| DAYS.index(data_element)+1}
  end
  data.each {|day_num|
    last_result = result.pop || []
    if last_result.length == 0 || day_num == last_result.last + 1
      last_result << day_num
      result << last_result
    else
      result << last_result
      result << [day_num]
    end
  }
  iterator = 0
  while iterator < result.length
    if result[iterator].length == 1
      result[iterator] = DAYS_ABRV[result[iterator].last-1]
    elsif  result[iterator].length == 2
      temp = DAYS_ABRV[result[iterator].last-1]
      result[iterator] = DAYS_ABRV[result[iterator].first-1]
      result[iterator+1] = temp
      iterator += 1
    else
      result[iterator] = DAYS_ABRV[result[iterator].first-1] + "-" + DAYS_ABRV[result[iterator].last-1]
    end
    iterator += 1
  end
  result = result.join(", ")
end
