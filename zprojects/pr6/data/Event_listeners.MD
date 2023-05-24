JavaScript event listeners are functions that wait for particular events to occur on the webpage and then execute code in response to those events. For example, if someone clicks on a button, an event listener can be used to detect this click and then trigger some code to run.

To add an event listener to an HTML element using JavaScript, you can use the `addEventListener()` method. This method takes two parameters: the name of the event to listen for (e.g. 'click') and the function to be executed when the event occurs.

Here's an example of adding an event listener to a button:

```
const button = document.querySelector('button');

button.addEventListener('click', function() {
  alert('Button clicked!');
});
```

In this example, we select the button element using the `querySelector()` method and store it in a variable called `button`. Then we add an event listener to the button using the `addEventListener()` method. We listen for the 'click' event, and when it occurs, we execute an anonymous function that displays an alert box with the message 'Button clicked!'.

There are many other types of events that can be listened for, such as 'mouseover', 'keydown', 'submit', and 'load'. By adding event listeners to elements on a webpage, you can make your JavaScript code more interactive and dynamic.
