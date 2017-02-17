A PhexMatcher is the sort of thing that works out if your example behaves properly or not. Most of the magic happens in expect:using:. 

Please notice that = works unlike in most classes. Therefore, do not store me in a collection!

If you wish to forward to another 'should' method call, the state of this matcher
would be lost. Instead, call either expect*, which works fine, or, if nothing else works,
use self should:. Note that this is much slower and leads to messier stack traces than 
calling expect

Instance Variables
	state:		the items matched so far
	value:		

state
	- xxxxx

value
	- xxxxx
