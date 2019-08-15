
def fizz_buzz(input):
    if (input % 3 == 0) and (input % 5 == 0):
        return "FizzBuzz"
    if input % 3 == 0:
        return "Fizz"
    if input % 5 == 0:
        return "Buzz"
    return input


print(fizz_buzz(3))


# if the input is divisible by 3 return Fizz
# if the input is divisible by 5 return Buzz
# if the input is divisible by 3 AND 5 return FizzBuzz
# otherwise return the input
