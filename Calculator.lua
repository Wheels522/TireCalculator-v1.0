-- Function to add two numbers
function add(a, b)
    return a + b
end

-- Function to subtract two numbers
function subtract(a, b)
    return a - b
end

-- Function to multiply two numbers
function multiply(a, b)
    return a * b
end

-- Function to divide two numbers
function divide(a, b)
    if b == 0 then
        return "Error: Cannot divide by zero"
    else
        return a / b
    end
end

-- Function to take input from the user
function get_input(prompt)
    io.write(prompt .. ": ")
    return io.read()
end

-- Main function to perform calculations
function main()
    local num1 = tonumber(get_input("Enter first number"))
    local num2 = tonumber(get_input("Enter second number"))
    local operation = get_input("Enter operation (+, -, *, /)")

    if operation == "+" then
        result = add(num1, num2)
    elseif operation == "-" then
        result = subtract(num1, num2)
    elseif operation == "*" then
        result = multiply(num1, num2)
    elseif operation == "/" then
        result = divide(num1, num2)
    else
        result = "Error: Invalid operation"
    end

    print("Result: " .. tostring(result))
end

-- Call the main function
main()
