JavaScript is a programming language that is widely used for web development. When it comes to creating a new method in JavaScript, you can use the "prototype" property to extend an existing object or create a new object. 

For example, let's say you want to create a new method "reverseString" that reverses the characters of a string. Here's how you can do it:

```
String.prototype.reverseString = function() {
  return this.split('').reverse().join('');
}
```

In this code, we're using the "prototype" property of the "String" object to add a new method called "reverseString". The function takes no parameters and it splits the string into an array of characters using the "split" method. The characters are then reversed using the "reverse" method and finally, the characters are joined back together using the "join" method to form the reversed string.

After defining the new method, you can call it on any string as follows:

```
const myString = 'Hello World';
console.log(myString.reverseString()); // dlroW olleH
```

This will output the reversed string "dlroW olleH" to the console.
