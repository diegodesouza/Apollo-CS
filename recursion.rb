# recursion refers to the ability of a problem to be solved by repeatedly
# solving smaller versions of the same problem.
# In simpler terms, recursion is the ability of a method or function to
# internally calls itself.

#From Wikipedia:

# In mathematics, the factorial of a non-negative integer n, denoted by n!,
# is the product of all positive integers less than or equal to n.

# For example, the factorial of 5 is 120 or (5 * 4 * 3 * 2 * 1).

def factorial(n)
  if n <= 1
    1
  else
    n * factorial(n - 1)
  end
end


#Can you identify the pattern here?

#0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610



# This series of numbers is referred to as the Fibonacci Numbers or Fibonacci
# Series. Starting with 0 and 1, we can calculate the next number in the series
# by summing up the previous two numbers.

# 0 1
# 0 + 1 = 1

# 0 1 1
# 1 + 1 = 2

# 0 1 1 2
# 2 + 1 = 3

# 0 1 1 2 3
# 2 + 3 = 5


# A common programming interview question is to calculate the nth number in the
# Fibonacci Series, which is most commonly solved using recursion.

def fibonnaci(n)
  if n == 1 || n == 2
    1
  else
    fibonnaci(n - 1) + fibonnaci(n - 2)
  end
end
