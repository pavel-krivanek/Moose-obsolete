*Geometry
hasOnOneSide: point1 and: point2 
 ^	
	((point1 x = point2 x and:[point1 x = self origin x or:[point1 x = self corner x]] )
or:[point1 y = point2 y and:[point1 y = self origin y or:[point1 y = self corner y]] ])