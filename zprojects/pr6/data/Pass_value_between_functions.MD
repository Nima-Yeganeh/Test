In JavaScript, values can be passed between functions in various ways:

1. Function parameters: Values can be passed as arguments when calling a function and can be accessed within the function through its parameters. For example:

```
function add(num1, num2) {
  return num1 + num2;
}

let result = add(5, 10);
console.log(result);
```

In this example, `5` and `10` are passed as arguments to the `add` function and are accessed within the function as `num1` and `num2`.

2. Return statement: Functions can return values, which can be stored in a variable and passed to another function. For example:

```
function multiply(num1, num2) {
  return num1 * num2;
}

function square(num) {
  return multiply(num, num);
}

let result = square(5);
console.log(result);
```

In this example, the `square` function calls the `multiply` function and passes `num` twice as an argument. The `multiply` function returns the product of the two arguments, which is then returned by the `square` function.

3. Global variables: Values can be stored in global variables and accessed by any function that has access to the global scope. However, this approach is generally not recommended as it can lead to unexpected results and hard-to-debug code. For example:

```
let num1 = 5;
let num2 = 10;

function add() {
  return num1 + num2;
}

let result = add();
console.log(result);
```

In this example, `num1` and `num2` are defined as global variables outside of any function and are accessed within the `add` function. However, if any other function modifies the values of `num1` or `num2`, it can affect the behavior of the `add` function and any other functions that rely on these variables.
