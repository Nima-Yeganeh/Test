Sure! Here's an example of how to create a JavaScript array:

```javascript
let myArray = [1, "Hello", true];
```

This creates an array with three values: the number 1, the string "Hello", and the Boolean value true. You can access array elements using their index, which starts at 0:

```javascript
console.log(myArray[0]); // Output: 1
console.log(myArray[1]); // Output: "Hello"
console.log(myArray[2]); // Output: true
```

You can also modify array elements using their index:

```javascript
myArray[0] = 2;
console.log(myArray); // Output: [2, "Hello", true]
```

You can add elements to an array using the `push()` method:

```javascript
myArray.push("new value");
console.log(myArray); // Output: [2, "Hello", true, "new value"]
```

You can remove an element from the end of the array using the `pop()` method:

```javascript
myArray.pop();
console.log(myArray); // Output: [2, "Hello", true]
```

I hope that helps! Let me know if you have any other questions.
