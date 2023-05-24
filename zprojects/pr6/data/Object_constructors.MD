In JavaScript, object constructors are used to create and initialize objects. An object constructor is a function that creates an instance of an object. When you call an object constructor function using the "new" keyword, it returns a new object instance with the properties and methods defined by that constructor. 

Here is an example of an object constructor function:

```
function Person(firstName, lastName, age) {
  this.firstName = firstName;
  this.lastName = lastName;
  this.age = age;
}

// Create a new person instance
var john = new Person("John", "Doe", 30);

// Access the values of the properties
console.log(john.firstName); // Output: "John"
console.log(john.lastName); // Output: "Doe"
console.log(john.age); // Output: 30
```

In this example, we have defined an object constructor function called "Person". It takes three parameters - firstName, lastName, and age - and initializes them as properties of the constructed object using the `this` keyword. We then create a new instance of the Person object called "john" using the `new` keyword.

We can access the properties of the created object using dot notation, as with any regular object.

Object constructors can be very useful for creating multiple instances of objects with similar properties and methods, without having to rewrite the same code over and over.
