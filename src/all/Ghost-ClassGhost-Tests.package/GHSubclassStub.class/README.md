I am special stub class to test ability to substitute superclass of real object by proxy. 
In that case all messages to instance which not define on me (subclass) will be intercepted by superclass ghost. But messages which defined by me should be not intercepted by superclass ghost. Tests use me to describe these behaviour  

	object := GHSubclassStub named: 'test class instance'
