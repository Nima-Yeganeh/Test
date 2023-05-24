In JavaScript, a function can return a value using the `return` keyword. 

When a function is called, the value returned by the function will be the value of the expression that follows the `return` keyword. If a function does not explicitly return a value, it will return `undefined` by default. 

Here is an example of a function that returns the sum of two numbers:

```
function addNumbers(a, b) {
  return a + b;
}

const sum = addNumbers(3, 5);
console.log(sum); // Output: 8
```

In this example, the `addNumbers()` function takes two arguments `a` and `b` and returns their sum using the `+` operator. The `const` keyword is used to declare a new variable `sum` and assign it the value returned by the `addNumbers()` function. Finally, `console.log(sum)` prints the value of `sum` to the console, which in this case is `8`.
