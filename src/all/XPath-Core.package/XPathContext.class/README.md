An XPathContext controls evaluation of XPath expressions. Contexts have a function library, variable bindings, and namespace mappings.

By default, qualified name tests like 'prefix:name' and wildcard tests like 'prefix:*' will match against the prefix directly. This isn't like the standard, where prefixes in node tests must be declared in the context before evaluation and the namespace they're bound to is matched against the (non-default) namespace of the node, but it's easier to use.

To get standard behavior, just declare at least one prefix in the context before evaluation (then every prefix must be declared in the context and the namespace URIs are matched instead of the literal prefixes).