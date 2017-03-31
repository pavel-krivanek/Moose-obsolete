figures
circumscribedCircle
	| center radius |
	center := self edges first perpendicularBisector intersect: self edges last perpendicularBisector.
	center isNil ifTrue: [ ^nil ] ifFalse: [ radius := (v1 dist: v2) * (v2 dist: v3) * (v3 dist: v1) / (4 * self area).
		^GCircle center: center radius: radius ] 
	
	"^ GCircle
		center:
			(self edges first perpendicularBisector intersect:
			 self edges last perpendicularBisector)
		radius: (v1 dist: v2) * (v2 dist: v3) * (v3 dist: v1) / (4 * self area)"