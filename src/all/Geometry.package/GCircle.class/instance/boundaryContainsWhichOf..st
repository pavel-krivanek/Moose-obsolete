comparing
boundaryContainsWhichOf: points
 ^ points select:[ :point| self boundaryContains: point]
