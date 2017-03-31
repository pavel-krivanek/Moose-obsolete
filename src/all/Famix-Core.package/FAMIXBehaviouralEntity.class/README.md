FAMIXBehaviouralEntity is an abstract superclass for any kind of behavior. For example, functions and methods. It has a name because it is a named entity but it also has a signature in the format: methodName(paramType1, paramType2). The signature property is necessary for a behavioral entity. An external parser should provide a few metrics that cannot be derived from the model such as cyclomatic complexity, numberOfStatements and numberOfConditionals. Other metrics can be computed from the model if enough information is provided such as numberOfLinesOfCode (from source anchor) and numberOfComments (from FAMIXComment).

It provides properties to manage:
(i)  parameters
(ii) local variables
(iii) accesses to variables, and
(iv) invocations to and from other behavioural entities.

Optionally, it can also specify a declaredType (e.g. return types for functions). This is useful for modeling behaviours from statically typed languages.