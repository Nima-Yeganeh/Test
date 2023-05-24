To add a new element using JavaScript, you can use the `createElement()` method to create the new element and the `appendChild()` method to add it to an existing element. 

Here's an example code snippet that creates a new paragraph element and adds it to an existing HTML div element with an id of "mydiv": 

```
// Create a new paragraph element
var newElement = document.createElement("p");

// Add content to the new element
var newText = document.createTextNode("This is a new paragraph!");

// Add the text to the new element
newElement.appendChild(newText);

// Add the new element to an existing div element
var existingDiv = document.getElementById("mydiv");
existingDiv.appendChild(newElement);
```

This will add a new paragraph element containing the text "This is a new paragraph!" in the existing div element with an id of "mydiv".
