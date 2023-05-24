JavaScript Object containers are commonly known as Objects in JavaScript. Objects in JavaScript are a way to create a collection of related data and functionality. They can hold properties, which are used to store values, and methods, which are used to perform actions. 

An object in JavaScript is created using the object literal notation, which uses curly braces to define the object and its properties. Here is an example:

```
let car = {
  make: "Toyota",
  model: "Corolla",
  year: 2021,
  drive: function() {
    console.log(`The ${this.make} ${this.model} is driving`);
  }
};
```

In this example, the `car` object has properties `make`, `model`, and `year`, as well as a method `drive` that logs a message to the console.

Objects in JavaScript are very flexible and can be used in a variety of ways, including as containers for data, as components in modular code, and as a way to organize related functions.
