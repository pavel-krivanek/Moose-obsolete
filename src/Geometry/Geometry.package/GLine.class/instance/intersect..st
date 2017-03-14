rectangle functions
intersect: aGLine 
	| xi yi |

	(self parallelTo: aGLine) ifTrue: [ ^ nil ].
					
	yi := (self c * (aGLine a) - (self a * (aGLine c)))
			/ 
			(self a * (aGLine b) - (self b * (aGLine a))).

	xi := self a isZero
		ifTrue: [
			 ( aGLine b * yi + (aGLine c)) negated / (aGLine a)]
		ifFalse: [
			 ( self b * yi + self c) negated / self a].
	
	^xi@yi.



