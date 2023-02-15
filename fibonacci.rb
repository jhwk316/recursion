
# Fibonacci using recursion

def fibs_rec(n)
  n-1
  if n == 0
    0
  elsif n == 1
    1
  else
    fibs_rec(n-1) + fibs_rec(n-2)
  end
end

p fibs_rec(8) # => 21
p fibes_rec(7) #  => 13


# Fibonacci using Iteration

def fibs(n)
  fib_position = 2 # to account for the [0, 1] starting numbers
  start = [0, 1]
  result = []
  
    while fib_position < n
      answer = start[-1] + start[-2]
      start << answer
      fib_position += 1
    end
  start
end
puts "Looping Fib"
p fibs(8) # => [0, 1, 1, 2, 3, 5, 8, 13]