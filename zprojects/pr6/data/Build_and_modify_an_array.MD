JavaScript is a programming language that allows developers to build and modify various data structures, including arrays. 

An array is a collection of elements of the same type stored in contiguous memory locations. To declare an array in JavaScript, we can use the following syntax:

```javascript
let myArray = []; // an empty array
let myArray2 = [1, 2, 3]; // an array of integers
let myArray3 = ['apple', 'banana', 'orange']; // an array of strings
```

To add or modify elements in an array, we can use the various built-in array methods such as `push()`, `pop()`, `shift()`, `unshift()`, `splice()`, etc. 

For example, let's say we have an array of colors and we want to add the color 'purple' to the end of the array:

```javascript
let colors = ['red', 'green', 'blue'];
colors.push('purple'); // adds 'purple' to the end of the array
console.log(colors); // output: ['red', 'green', 'blue', 'purple']
```

Similarly, we can use the `splice()` method to insert or remove elements from a specific index in the array:

```javascript
let fruits = ['apple', 'banana', 'orange'];
fruits.splice(1, 0, 'mango'); // inserts 'mango' at index 1
console.log(fruits); // output: ['apple', 'mango', 'banana', 'orange']

fruits.splice(2, 1); // removes the element at index 2
console.log(fruits); // output: ['apple', 'mango', 'orange']
```

These are just a few examples of how to build and modify an array in JavaScript. There are many other useful array methods available that you can use depending on your specific use case.
