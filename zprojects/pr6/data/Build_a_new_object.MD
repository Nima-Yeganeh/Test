Sure! In JavaScript, you can build a new object by using either the object literal notation or the object constructor notation.

With the object literal notation, you create a new object by specifying its properties and values in curly braces, like this:

```
const myObject = {
  property1: 'value1',
  property2: 'value2',
  method1: function() {
    // do something
  }
};
```

With the object constructor notation, you create a new object by using the `new` keyword and calling the `Object` constructor function, like this:

```
const myObject = new Object();
myObject.property1 = 'value1';
myObject.property2 = 'value2';
myObject.method1 = function() {
  // do something
};
```

Both approaches will create a new object with the specified properties and methods. You can then access and modify the properties and methods of the object using dot notation, like this:

```
console.log(myObject.property1); // outputs 'value1'
myObject.method1(); // executes the method
```
