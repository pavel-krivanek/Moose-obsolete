accessing
cornerDirections
	^ cornerDirections
		ifNil: [ 
			cornerDirections := (OrderedCollection new
				add: (#top -> (0 @ 1));
				add: (	#bottom -> (0 @ -1));
				add: (#left -> (1 @ 0));
				add: (#right -> (-1 @ 0));
				add: (#topRight -> (-1 @ 1));
				add: (#bottomRight -> (-1 @ -1));
				add: (#bottomLeft -> (1 @ -1));
				add: (#topLeft -> (1 @ 1));
				yourself) asDictionary ]