JavaScript is a scripting language used to create dynamic and interactive websites. Event listeners are used to detect and respond to various events that occur on a webpage, such as a click or hover.

To create an event listener in JavaScript, you first need to target the element you want to add the listener to using the `querySelector()` or `getElementById()` method. Once you have selected the element, you can use the `addEventListener()` method to specify which event you want to listen for and what action you want to take when that event occurs.

Here’s an example of how to add a click event listener to a button element:

```javascript
const myButton = document.querySelector('#myButton');
myButton.addEventListener('click', function() {
  console.log('Button clicked!');
});
```

In the code above, `myButton` is the button element being targeted, `'click'` is the event being listened for, and the function prints a message to the console when the button is clicked.

You can also use arrow functions with event listeners, like so:

```javascript
const myButton = document.querySelector('#myButton');
myButton.addEventListener('click', () => {
  console.log('Button clicked!');
});
```

This accomplishes the same thing as the previous example, but using an arrow function instead of a regular function.
