I represent the result of executing an example. 

I can be in the following four states:
- success: creating and runnign the example executed successfully;
- failure: running the examples caused an assertion to fail, either in the actul example or in an after method;
- error: running the example raised an exception that makes the example be considered an error, either in the actul example of in an after method;
- problem: creating the example  detected issues in the structure of the example; the example will still be run, however, it will have a distinct state regardless of the result of the run.

API for determining the state of the example:
- #failure - the exception that marks this example as a failure. This is also the exception raised when an assertion fails within an example;
- #signalableExceptions - a list of exception that mark the example as an error (only if the example is not already a failure).

I keep track of the
- returnValue - the real object returned by the example method
- exception - the last error executed during an example