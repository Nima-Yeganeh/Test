In JavaScript, you can access object properties using dot notation or bracket notation. 

With dot notation, you can access properties using the object name followed by a period (.) and the property name. For example, if you have an object called "person" with a property "name", you can access it like this: `person.name`.

With bracket notation, you can access properties using the object name followed by square brackets [] and the property name in quotes. For example, if you have an object called "person" with a property "name", you can access it like this: `person['name']`.

Both methods are equivalent and can be used interchangeably. However, bracket notation is useful when the property name is dynamic or contains a special character. 

For example, if the property name is stored in a variable, you would use bracket notation. Here's an example:

```
let person = {
  name: 'John',
  age: 30
};

let propName = 'name';
console.log(person[propName]); // Output: John
```
