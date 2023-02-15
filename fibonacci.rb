

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