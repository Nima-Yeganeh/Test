In JavaScript, you can pass data to a function with parameters by defining the parameters in the function's definition, separated by commas. When you call the function, you pass arguments for each parameter, separated by commas in the function call.

Here's an example:

```
function greet(name, age) {
  console.log(`Hello, ${name}. You are ${age} years old.`);
}

greet("John", 25);
```

In this example, the `greet` function takes two parameters, `name` and `age`. When we call the function and pass it "John" and 25, respectively, those values get assigned to `name` and `age` within the function. The function then logs a message to the console using those values.

So the output will be: `Hello, John. You are 25 years old.`
