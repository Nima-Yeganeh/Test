JavaScript's `querySelector` method allows you to select one or more elements in the DOM by using CSS selectors. This method returns the first element that matches the selector, or null if no elements match.

Here's an example of how to select an element with a specific class using `querySelector`:

```javascript
const element = document.querySelector('.my-class');
```

This would select the first element in the document that has the class `my-class`.

You can also select elements by their tag name or by their ID:

```javascript
const element1 = document.querySelector('h1'); // selects the first h1 element in the document
const element2 = document.querySelector('#my-id'); // selects the element with the ID 'my-id'
```

If you want to select multiple elements that match a selector, you can use the `querySelectorAll` method:

```javascript
const elements = document.querySelectorAll('.my-class');
```

This will return a `NodeList` object with all the elements that have the class `my-class`.

Once you have selected an element or elements, you can manipulate them using JavaScript. For example, you can change their text content, add or remove classes, or modify their attributes.
