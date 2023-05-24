The conditional if else statement in JavaScript is a programming construct that allows you to execute different blocks of code depending on whether a certain condition is true or false. 

Here's the basic syntax:

```
if (condition) {
  // code to execute if condition is true
} else {
  // code to execute if condition is false
}
```

In this code structure, the condition is a logical statement that can evaluate to either true or false. If the condition is true, the code block inside the first set of curly braces will be executed. If the condition is false, the code block inside the second set of curly braces will be executed instead.

You can also use else-if statements to check for additional conditions if the first condition is false:

```
if (condition1) {
  // code to execute if condition1 is true
} else if (condition2) {
  // code to execute if condition2 is true
} else {
  // code to execute if both condition1 and condition2 are false
}
```

In this case, the first code block will be executed if condition1 is true. If condition1 is false, but condition2 is true, the second code block will be executed. If both conditions are false, the code block inside the final set of curly braces will be executed.
