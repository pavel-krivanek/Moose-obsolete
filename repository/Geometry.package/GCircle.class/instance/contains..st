testing
contains: aPoint
^ (self radius > (self center dist: aPoint)) and:[ (self boundaryContains: aPoint) not ]