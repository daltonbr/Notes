# Python Basics

Python is a **Dynamic Typing language** (like JS and Ruby); not Static like C++, C# and Java.
The types are defined at Run Time, not Compile Time.

Bellow we see some different types os variables, and ways to initialize them.

```Python
student_count = 1000
rating = 4.99
is_published = False
course_name = "Python"
another_string = 'Python'
multi_line = """
Multiple
Lines
"""

x, y = 1, 2
x = y = 1

```

We can recover the type a variable using the ```type``` functions

```Python
student_count = 1000
print(type(student_count))

# <class 'int'>
```

This is a valid code

```Python
age = 20
age = "Python"
```

Still, after Python 3.6 we can annotate our variables

If we use a _linter_, like ```mypy``` we will get a warning when we do some like that.

```Python
age: int = 20
age = "Python"
```

## Mutable and Immutable types

```Python
x = 1
# prints the address when we store this variable
print(id(x)) 

x = x + 1
print(id(x))

# we will get two different addresses for x

```

The second allocation from the example above happens because **Integers are immutable**.

At some point the **Garbage Collector** will free that memory for us.

---

Now an example of a **mutable type**

```Python
x = [1, 2, 3]
print(id(x))

x.append(4)
print(id(x))
# this will print the same memory address
```

The same address printed from above example indicate that **lists are a mutable type** in Python.

```Python
course = "Python Programming"
print(len(course))
# Prints "P"
print(course[0])

# Prints "g" (the last letter)
print(course[-1])

# Prints "Pyt"
print(course[0:3])
print(course[:3]) # assumes [0:3]
print(course[:3]) # assumes 0 till the end
print(course[:]) # Print the entire string
```

Note that when Python get this substrings, we get a new allocation for every command.

## Escape Sequences

```Python
message = "Python Programming"
print(message)

message = 'Python "Programming"'
print(message)

# \"
# \'
# \n
# \\
message = "Python \"Programming\""
print(message)

# with triple quotes we can use multi-line strings
```

```Python
first = "Dalton"
last = "Lima"
full = f"{first} {last}"
print(F"{len(first)}")
print(full)
```

## Numbers

```Python
x = 10

x = 0b10
x = 0x12C

# a + bi (Complex number)
x = 1 + 2j

```

## Arithmetic Operations

```Python
x = 10 / 3  # float division
x = 10 // 3 # integer division
x = 10 % 3  # modulo
x = 10 ** 3  # power
```

## Type conversion

Python is a **strongly typed language** (as opposed to JS, a weakly typed language).

The code above will give us an error, because the compiler have mismatching types, and therefore cannot convert them implicitly. We need to explicitly convert one of the two.

```Python
x = input("x: ")
y = x + 1
```

```Python
x = input("x: ")

# Two different options
y = int(x) + 1
y = x + str(1)

# explicit casts
int(x)
float(x)
bool(x)
str(x)
```

```Python
# Falsy values - are converted to False when casted to bool
# ""
# 0
# []
# None - equivalent to NULL in C languages
```

## Conditional Statements

```Python
age = 22
if age >= 18:
    print("Adult")
elif age >= 13:
    print("Teenager")
else
    print("Child")

print("All done!")
```

## Logical Operands

And, Or, Not

```Python
name = "   "
if not name.strip():
    print("Name is empty")

age = 22
if age >= 18 and age <65:
    print("Eligible)

# Equivalent to
if 18 <= age < 65:
    print("Eligible)
```

## Ternary operator

```Python
message = "Eligible" if age >= 18 else "Not eligible"
```

## For loops

```Python
for x in "Python":
    print(x)

for x in ['a', 'b', 'c']:
    print(x)

for x in range(5):
    print(x)
# print 0 trough 4

for x in range(2, 5):
    print(x)
# print 2 trough 4

for x in range(0, 10, 2):
    print(x)
# print 0 through 10, with a step of 2 - only the even numbers
```

## For...else block

The else statement will only be executed if we execute the entire for loop.

```Python
names = ["John", "Dalton", "Thais"]
for name in names:
    if name.startswith("J"):
        print("Found")
        break
else:
    print("Not found")
```

## While loop

```Python
guess = 0
answer = 5

while answer != guess:
    guess = int(input("Guess: "))
```

We can use a ```while...else``` loop as well.

## Functions

```Python
def funcname(parameter_list):
    pass
```

```Python
# define a default value
def increment(number, by=1):
    return number + by

def increment(number: int, by: int=1) -> tuple:
    return (number, number + by)


print(increment(2, 3))

# a key word argument, make the code more readable
print(increment(2, by=4))
```

We can return a ```tuple``` from functions

```Pythons
my_list = [1, 2, 3]
my_tuple = (1, 2, 3)

convert_to_tuple = 
```

## *args. wait, what?

The asterisk converts the input values into a tuple

```Python
def multiply(*list):
    total = 1
    for number in list:
        total *= number
    return total


print(multiply(2, 3, 4, 5))
```

## **args

This will return a dictionary in JSON

```Python
def save_user(**user):
    print(user)
    print(user["name"])


save_user(id=1, name="admin")
```

## Quiz

In Python we don't have **block level scope**. The variable will be accessible in the entire function.

```Python
def greet():
    if True"
        message = "a"
    print(message)
```

For **global variables**, they are accessible in the entire file. Nonetheless,they have a local version inside the scope of the variable.

```Python
message = "a"
greet()
print("outside greet")
print(message)

# inside greet
# b
# outside greet
# a
```

We can access the global variables from inside the function scope, note that using global variables is considered bad practice normally.

```Python
message = "a"

def greet():
    global message = "c"

greet()
print(message)
```
