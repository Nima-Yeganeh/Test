In JavaScript, `const` is a keyword used to declare a constant variable, which cannot be re-assigned or re-declared once it has been initialized. 

For example, consider the following code:

```
const PI = 3.14;
PI = 3.1416; // this will result in an error
```

In the above code, we define `PI` as a constant variable with the value of `3.14`. When we try to re-assign `PI` to `3.1416`, it will throw an error because `PI` is a constant variable and cannot be re-assigned.

`const` is often used in place of `var` to declare variables that will not change throughout a program's execution. It can also be useful for improving code readability and preventing accidental re-assignment of variables.
