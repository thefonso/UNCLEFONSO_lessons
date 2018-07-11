# N CHOOSE K
#
#  combinations(n, k) = n! / k!(n - k)!
#
# FACTORIAL SOLUTION
def nck_factorial(n, k)
  factorial(n) / (factorial(k) * factorial(n - k))
end

def factorial(n)
  if n <= 1
    return 1
  else
    return n*factorial(n-1)
  end
end

# p nck_factorial(5, 3)

# RECURSIVE SOLUTION
def nck_recursive(n, k)
  if k == 0 || k == n
    return 1
  else
    return nck_recursive(n-1, k) + nck_recursive(n-1, k-1)
  end
end

p nck_recursive(5,3)

