A state for <?xml ...?> text declaration tokens at the start of the external DTD subset.

This state #canTerminateInput unlike XMLXMLDeclarationState because external subsets and parsed entities can be empty, but documents must have at least one element.