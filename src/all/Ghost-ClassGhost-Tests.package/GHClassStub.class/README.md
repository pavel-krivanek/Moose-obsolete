I am special stub class to test ability to substitute class of real object by proxy. In that case all messages to instance will be intercepted by class ghost. And tests use me to describe these behaviour  

	object := GHClassStub named: 'test class instance'
 
Internal Representation and Key Implementation Points.

    Instance Variables
	someName:		<String>


    Implementation Points