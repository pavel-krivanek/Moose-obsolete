as yet unclassified
oppositeCorners
	^ oppositeCorners
		ifNil: [ 
			oppositeCorners := (OrderedCollection new
				add: (#topRight -> #bottomLeft);
				add: (#bottomLeft -> #topRight);
				add: (	#bottomRight -> #topLeft);
				add: (#topLeft -> #bottomRight);
				add: (	#top -> #bottom);
				add: (	#bottom -> #top);
				add: (	#left -> #right);
				add: (	#right -> #left);
				yourself) asDictionary ]