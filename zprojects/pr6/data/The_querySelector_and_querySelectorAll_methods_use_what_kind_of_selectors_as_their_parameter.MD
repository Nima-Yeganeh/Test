JavaScript's `querySelector()` and `querySelectorAll()` methods both use CSS-style selectors as their parameters. 

The `querySelector()` method returns the first element within the document that matches the specified selector, while the `querySelectorAll()` method returns a static (non-live) NodeList containing all elements within the document that match the specified selector. 

Here's an example:

```javascript
// select first element with class "example"
const example = document.querySelector('.example');

// select all elements with class "example"
const examples = document.querySelectorAll('.example');
```

In the example above, `.example` is the CSS-style selector that is being used to select HTML elements.
