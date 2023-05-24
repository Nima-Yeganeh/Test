JavaScript has a built-in method called `find()` which can be used to search for a specific element in an array. The `find()` method takes a callback function as an argument that should return true or false for each element in the array.

The `callback` function takes the following arguments:
1. `currentValue` - The value of the current element being processed in the array.
2. `index (Optional)` - The index of the current element being processed in the array.
3. `array (Optional)` - The array `find()` was called upon.

If the `callback` function returns true for an element in the array, then the `find()` method will return that element. Otherwise, it will return undefined.

Here's an example:

```
const numbers = [10, 20, 30, 40, 50];

const result = numbers.find(function(element) {
  return element > 25;
});

console.log(result); // Output: 30
```

In this example, we're searching for the first element in the `numbers` array that is greater than 25. The `find()` method returns 30 as the first element that satisfies the callback function.
