JavaScript is a popular programming language that is primarily used for web development. When you add a new array item to a previously undefined slot in JavaScript, two things can happen depending on how you add the new array item.

1. Using a numeric index: If you add a new array item to an undefined slot using a numeric index, all the array slots between the last defined slot and the new slot will be filled with undefined values. For example:

```
let array = [];
array[2] = "Hello";
console.log(array) //output: [undefined, undefined, "Hello"]
```

2. Using the .push() method: If you add a new array item to an undefined slot using the .push() method, all the undefined values between the last defined slot and the new slot will be automatically filled with undefined values. For example:

```
let array = [];
array.push("Hello");
array[2] = "World";
console.log(array) //output: ["Hello", undefined, "World"]
```

In both cases, JavaScript will auto-populate the undefined slot(s) with `undefined` values.
