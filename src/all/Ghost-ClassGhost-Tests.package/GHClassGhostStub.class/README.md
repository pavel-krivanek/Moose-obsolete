I am just example of real class ghost implementation which is used in tests. 
When I substitute class of real objects I intercept instance messages and process it by same stub behaviour which I use for direct messages. 
So real objects with class which was substituted by me will return sent messages as it result.
    
Internal Representation and Key Implementation Points.

    Instance Variables
	ghostBehaviour:		<GHGhostBehavior>