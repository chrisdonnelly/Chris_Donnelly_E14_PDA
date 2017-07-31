### Testing task 1 code:

  Carry out static testing on the code below.  
  Read through the code.  Comment any errors you can see without correcting them.

 
# def func1 val  missing brackets around argument. 
  if val = 1
  return true
  else
  return false
  end
end
  
# dif max a b        should be def rather than dif.  Missing brackets and comma around and between arguments. 
  if a > b
      return a 
  else
  # b       missing 'return'
  end 
end 
# end       incorrect number of 'end' - one end to many.
  
def looper 
  # for i in 1..10   missing brackets around number range.
  puts i
  end
end
 
failures = 0 
 
if looper == 10          
  puts "looper passed"
else
  puts "looper failed"
  failures = failures + 1
 #                            missing 'end' for end of loop and 'end' for end of function.
  
if func1(3) == false
  puts "func1(3) passed"
else
  puts "func1(3) failed"
  failures = failures + 1
end 
 
  
if max(100,1) == 100 
  puts "max(100,1) passed"
else
  # puts "func1(3) failed"             references wrong function.
  # failrues = failures + 1         misspelling of failures.
end

  
# if failures                   lacks condition for IF statement. 
  puts "Test Failed"
else
  puts "Test Passed"
end