# solver class
class Solver
  def factorial(num)
    raise 'ArgumentError: n must be >= 0' if num.negative?

    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(word)
    word.reverse
  end
end
