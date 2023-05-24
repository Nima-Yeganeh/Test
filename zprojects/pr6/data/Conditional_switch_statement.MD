In JavaScript, a switch statement is a control flow statement that allows you to test multiple conditions and execute different code depending on the value of an expression. 

The syntax of a switch statement is as follows:

```
switch (expression) {
  case value1:
    // code to be executed if expression === value1
    break;
  case value2:
    // code to be executed if expression === value2
    break;
  ...
  default:
    // code to be executed if none of the above cases are true
    break;
}
```

The `expression` in a switch statement can be a variable or any valid JavaScript expression that returns a value. The `case` keyword is followed by a specific value or a range of values (separated by a comma) to be compared to the expression. If the expression matches a `case` value, the code block following that `case` will be executed. 

The `break` keyword is used to break out of the switch statement once a match is found. Without a `break` statement, all the subsequent code blocks will be executed until a `break` statement is encountered or the end of the switch statement is reached.

The `default` keyword is used to specify code that should be executed if none of the `case` values match the expression. The `default` code block should come last in the switch statement.
