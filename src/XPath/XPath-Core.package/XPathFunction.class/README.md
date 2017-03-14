An abstract class for XPath functions. Subclasses need to implement the class #prototypeSource method to return a string with an XPath function prototype and then implement the instance-side #function method to implement the function and return its value.

When invoked, the arguments and the return value are automatically converted to the types specified by the prototype.

Functions, including user-defined, can be combined in an XPathFunctionSet and injected into an XPathContext object before evaluation, but some functions (including last() and position()) are compiled inline and can never be redefined.