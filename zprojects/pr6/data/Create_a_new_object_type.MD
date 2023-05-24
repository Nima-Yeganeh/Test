In JavaScript, you can create a new object type by defining a constructor function with properties and methods. A constructor function is a template for creating objects that share the same properties and methods.

Here's an example of creating a new object type in JavaScript:

```
function Person(name, age) {
  this.name = name;
  this.age = age;
  this.greet = function() {
    console.log("Hello, my name is " + this.name + " and I am " + this.age + " years old.");
  }
}

// Creating a new instance of the Person object
var john = new Person("John", 30);

// Calling the greet method on the john instance
john.greet(); // output: "Hello, my name is John and I am 30 years old."
```

In the above example, we define a `Person` constructor function that takes two parameters: `name` and `age`. Inside the constructor function, we assign these parameters to `this.name` and `this.age` respectively. We also define a `greet` method to the `Person` object using the `this` keyword.

To create a new instance of the `Person` object, we use the `new` keyword followed by the constructor function name and pass in the required arguments. We then call the `greet` method on the new instance to output the greeting message.
