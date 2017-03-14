properties
hasPoint:aPoint

  ^( (self v1 x <=~ aPoint x and: [aPoint x <=~ self v2 x])  or:
		[self v2 x <=~ aPoint x and: [aPoint x <=~ self v1 x]]  ) and: 
   [ (self v1 y <=~ aPoint y and: [aPoint y <=~ self v2 y])  or:
		[self v2 y <=~ aPoint y and: [aPoint y <=~ self v1 y]]   ]  .
   
