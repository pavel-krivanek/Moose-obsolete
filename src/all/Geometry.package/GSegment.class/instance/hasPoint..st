properties
hasPoint:aPoint

  ^( ((self v1 x lesserOrDifferentThan: aPoint x) and: [aPoint x lesserOrDifferentThan: self v2 x])  or:
		[(self v2 x lesserOrDifferentThan: aPoint x) and: [aPoint x lesserOrDifferentThan: self v1 x]]  ) and: 
   [ ((self v1 y lesserOrDifferentThan: aPoint y) and: [aPoint y lesserOrDifferentThan: self v2 y])  or:
		[(self v2 y lesserOrDifferentThan: aPoint y) and: [aPoint y lesserOrDifferentThan: self v1 y]]   ]  .
   
