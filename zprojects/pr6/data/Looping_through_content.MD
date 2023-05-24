JavaScript looping through content refers to the process of iterating over a set of data items, such as arrays or objects, and performing some action on each item. There are several ways to loop through content in JavaScript, including the for loop, while loop, and the forEach method.

The for loop is one of the most common ways to loop through content in JavaScript. It allows you to iterate over an array or object, and execute a block of code for each item. For example, the following code demonstrates how to loop through an array using the for loop:

```
let arr = [1, 2, 3];

for (let i = 0; i < arr.length; i++) {
  console.log(arr[i]);
}
```

This will output the following:

```
1
2
3
```

The while loop is another way to loop through content in JavaScript. It performs the same function as the for loop, but with a slightly different syntax. For example, the following code demonstrates how to loop through an array using the while loop:

```
let arr = [1, 2, 3];
let i = 0;

while (i < arr.length) {
  console.log(arr[i]);
  i++;
}
```

This will output the same result as the for loop.

Finally, the forEach method is a built-in method that you can use to loop through an array in JavaScript. It is the most concise way of looping through an array, as it requires less code than the for or while loop. For example, the following code demonstrates how to loop through an array using the forEach method:

```
let arr = [1, 2, 3];

arr.forEach(function(item) {
  console.log(item);
});
```

This will output the same result as the for and while loops.
