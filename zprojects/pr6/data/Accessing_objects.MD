In JavaScript, you can access objects using either dot notation or bracket notation. 

Using dot notation, you can access an object's properties and methods by referencing them directly with a period followed by the property or method name. For example:

```
let person = {
  name: "John",
  age: 30,
  sayHello: function() {
    console.log("Hello!");
  }
};

console.log(person.name); // "John"
console.log(person.age); // 30
person.sayHello(); // "Hello!"
```

Using bracket notation, you can access an object's properties and methods by referencing them using square brackets, with the property or method name as a string inside the brackets. This can be useful when working with object properties that have special characters in their names or when using a variable to reference the property name. For example:

```
let person = {
  name: "John",
  age: 30
};

console.log(person["name"]); // "John"

let propName = "age";
console.log(person[propName]); // 30
```

In either case, you can also add or modify properties using the same syntax. For example:

```
let person = {
  name: "John",
  age: 30
};

person.name = "Jane";
person["age"] = 40;

console.log(person.name); // "Jane"
console.log(person.age); // 40
```
