JavaScript arrow functions are a shorthand syntax for declaring functions. They were introduced in ECMAScript 6 (ES6) as a way to simplify function syntax and reduce the amount of code needed to declare functions.

Arrow functions have a few key differences from traditional JavaScript functions. The first is that they do not have their own 'this' keyword. Instead, the 'this' keyword in an arrow function refers to the 'this' value of the surrounding lexical scope. This can be useful for avoiding issues with the binding of 'this' within nested functions.

Another difference is that arrow functions do not have their own 'arguments' object. Instead, you can use the 'rest' parameter to capture a variable number of arguments.

Here's an example of how to declare an arrow function: 

```
const multiply = (x, y) => {
  return x * y;
}
```

In this example, 'multiply' is an arrow function that takes two parameters ('x' and 'y') and returns their product.

Arrow functions can also be written in a shorter syntax if they only include a single line of code. Here's an example:

```
const double = (x) => x * 2;
```

In this example, 'double' is an arrow function that takes a single parameter ('x') and returns twice its value. Since there is only a single line of code, we can omit the brackets and the 'return' keyword.
