In JavaScript, you can create a new object from a class using the 'new' keyword. 

Here is an example code snippet:

```
class MyClass {
  constructor(name) {
    this.name = name;
  }
  
  greet() {
    console.log(`Hello, my name is ${this.name}`);
  }
}

const myObject = new MyClass('Alice');
myObject.greet(); // Output: Hello, my name is Alice
```

In this example, we created a class called 'MyClass' with a constructor that sets the 'name' property of the object, and a 'greet' method that prints out a message to the console. 

Then, we created a new object 'myObject' by calling the 'new' keyword and passing the class constructor with the argument 'Alice'. Finally, we called the 'greet' method on our newly created object.
