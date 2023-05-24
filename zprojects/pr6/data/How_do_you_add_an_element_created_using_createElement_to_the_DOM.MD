To add an element that you've created using the `createElement()` method of JavaScript to the Document Object Model (DOM), you can use the `appendChild()` method. This method appends a node as the last child of a node, which means you can add a new element to an existing element in the DOM.

Here's an example:

```javascript
// create a new element
const newElement = document.createElement("p");

// add text to the element
newElement.innerText = "New element added to the DOM!";

// select the parent element where the new element will be added
const parentElement = document.getElementById("myDiv");

// add the new element to the parent element
parentElement.appendChild(newElement);
```

In this example, we first create a new `<p>` element using `document.createElement()`. We then add text to the element using the `innerText` property. Next, we select the parent element where we want to add the new element using `document.getElementById()`. Finally, we use the `appendChild()` method to add the new element to the parent element. This will add the new element as the last child of the parent element in the DOM.
