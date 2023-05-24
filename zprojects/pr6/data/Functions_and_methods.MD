JavaScript functions are reusable blocks of code that perform a specific task. They are created using the `function` keyword, followed by the function name, and a set of parentheses that contain any parameters that the function takes. The code that is executed when the function is called is enclosed in curly braces.

For example:

```javascript
function sayHello(name) {
  console.log(`Hello ${name}!`);
}

sayHello("John"); // Output: Hello John!
```

JavaScript methods, on the other hand, are functions that are associated with an object or data type. They are defined as properties of an object or a prototype of a data type. 

For example, the `toUpperCase()` method is a built-in method of the String object that converts a string to uppercase:

```javascript
const greeting = "hello";
const uppercaseGreeting = greeting.toUpperCase();
console.log(uppercaseGreeting); // Output: HELLO
```

Another example is the `push()` method of the array object, which adds an element to the end of an array:

```javascript
const myArray = [1, 2, 3];
myArray.push(4);
console.log(myArray); // Output: [1, 2, 3, 4]
```

In summary, functions are standalone blocks of code that perform a specific task, while methods are associated with an object or data type and perform a specific action on that object or data type.
