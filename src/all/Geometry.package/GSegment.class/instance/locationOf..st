properties
locationOf: aPoint
    
    ^ ((self v2 x - self v1 x) * (aPoint y - self v1 y) - 
      ((self v2 y - self v1 y) * (aPoint x - self v1 x))) signFuz