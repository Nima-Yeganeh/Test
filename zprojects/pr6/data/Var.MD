In JavaScript, a `var` is a keyword used to declare a variable. Variables are used to store data values, such as numbers or strings, that can be used later in the code. 

Here's an example of a variable declaration using `var`:

```
var myName = "John";
```

In this example, `myName` is the name of the variable, and "John" is the value that is being assigned to it.

One important thing to note about `var` is that it has function scope, meaning that the variable can only be accessed within the function in which it is declared. If you try to access the variable outside of that function, you'll get an error.

```
function myFunction() {
  var x = 10;
}
console.log(x); // This will result in an error
```

In modern JavaScript, `let` and `const` are commonly preferred over `var`, as they have block scope and can prevent certain errors from occurring.
