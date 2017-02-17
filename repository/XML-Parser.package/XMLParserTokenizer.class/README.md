This is a base class for parser tokenizers that read tokens from a stream using an XMLNestedStreamReader and context objects. Sending #nextToken causes a token to be read and handler messages to be sent to a driver.

Be careful changing the code in this class or subclasses because it's optimized.