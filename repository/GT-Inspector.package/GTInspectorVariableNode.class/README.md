I am an abstract inspector variable node.
My main responsibility is to associate a variable name of a host object with its value. 

I am used by Inspector's raw presentation.

Public API and Key Messages

- hostObject return an object (host) which has a variable I represent
- label return a string label of the variable which may be an instance variable name or a dynamically generated name for dynamic variables.
- value return a variable's value
- key return an object used as unique key to associate a variable, it may be an integer for indexed variables or a string for dynamic ones

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	hostObject:		<Object>

    Implementation Points

		HostObject can not be nil