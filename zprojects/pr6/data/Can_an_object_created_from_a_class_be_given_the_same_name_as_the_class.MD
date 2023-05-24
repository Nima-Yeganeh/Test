Yes, in JavaScript you can give an object created from a class the same name as the class. Here's an example:

```
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
}

const Person = new Person('John', 30);
```

In this example, we create a `Person` class and then create an object instance also named `Person`. This is allowed in JavaScript, but it may cause confusion in your code, so it's generally not recommended. It's better to use unique variable names to avoid any potential naming conflicts and make your code more readable.
