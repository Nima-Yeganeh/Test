JavaScript has several older methods for accessing elements in the HTML document. These methods include:

1. `document.getElementById()` - This method is used to access an element in the document by its unique ID. For example, if you have an element with an ID of "myElement", you can access it using `document.getElementById("myElement")`.

2. `document.getElementsByTagName()` - This method is used to access a collection of elements in the document that share a specific tag name. For example, if you want to access all the `<p>` elements in the document, you can use `document.getElementsByTagName("p")`.

3. `document.getElementsByClassName()` - This method is used to access a collection of elements in the document that share a specific class name. For example, if you want to access all the elements that have a class of "myClass", you can use `document.getElementsByClassName("myClass")`.

4. `document.getElementsByName()` - This method is used to access a collection of elements in the document that share a specific name attribute. For example, if you want to access all the `<input>` elements in the document that have a name of "firstName", you can use `document.getElementsByName("firstName")`.

These older methods are still commonly used, but more modern methods such as `querySelector()` and `querySelectorAll()` provide more powerful and flexible ways to access elements in the document.
