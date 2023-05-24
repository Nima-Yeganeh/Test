JavaScript allows you to create functions, which are reusable blocks of code that perform specific tasks. To build a function in JavaScript, you can use the following syntax:

```
function functionName(parameter1, parameter2, ...) {
  // code to be executed
  return output;
}
```

Here's an example of a function that takes two parameters (num1 and num2) and returns their sum:

```
function addNumbers(num1, num2) {
  var sum = num1 + num2;
  return sum;
}
```

You can then call this function by providing values for the parameters:

```
var result = addNumbers(5, 7);
console.log(result); // Output: 12
```

Functions can also be called without any parameters or with default parameters, and they can take various data types as parameters, including strings, numbers, and objects.
