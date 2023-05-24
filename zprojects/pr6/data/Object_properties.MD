In JavaScript, object properties are essentially key-value pairs that define the characteristics of an object. When you create an object, you can define its properties using the following syntax:

```
let myObject = {
  property1: value1,
  property2: value2,
  ...
};
```

Here, `property1`, `property2`, and so on, are the names of the properties, and `value1`, `value2`, etc., are the values associated with those properties.

There are two types of object properties in JavaScript, namely data properties and accessor properties.

Data properties contain a value that can be accessed using the dot notation or square bracket notation, while accessor properties are actually functions that are used to retrieve or set a value. 

To define an accessor property, you can use the `get` and `set` keywords like this:

```
let myObject = {
  get myProperty() {
    return this.value;
  },
  set myProperty(value) {
    this.value = value;
  }
};
```

Here, `myProperty` is an accessor property that can retrieve and set the `value` attribute of `myObject`. You can use `myObject.myProperty` to get or set the value of `value`.

In summary, the properties of an object in JavaScript help define the behavior and characteristics of the object.
