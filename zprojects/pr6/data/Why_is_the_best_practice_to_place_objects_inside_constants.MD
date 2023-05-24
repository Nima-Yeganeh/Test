In JavaScript, it is considered a best practice to place objects inside constants (i.e. variables declared using the `const` keyword) to help ensure that their values cannot be reassigned or accidentally modified.

When you declare an object using `const`, you can still modify the properties of the object, but you cannot reassign a new value to the variable holding the object. This helps prevent accidental overwriting of values that may break your code.

For example:

```
const myObj = { name: "John", age: 30 };

myObj.age = 31; // this is allowed
myObj = { name: "Mark", age: 40 }; // this will result in an error
```

On the other hand, if you declare an object using `let` or `var`, you can reassign a new value to the variable holding the object, which can lead to unexpected behavior.

Overall, using `const` to hold objects is a good practice that helps ensure code reliability and prevents accidental bugs.
