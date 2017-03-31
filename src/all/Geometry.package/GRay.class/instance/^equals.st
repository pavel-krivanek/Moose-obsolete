comparing
= aRay

^ self origin =~ aRay origin and: [
 (self origin bearingToPoint: self direction) =~
 (aRay origin bearingToPoint: aRay direction) ]
