accessing
min
	"| min0 found0 |"

	found ifNil: [ self update ].	"min0 := Unlimited positive.
	1 to: self size do: [ :index |
		(self at: index) < min0 
			ifTrue: [ min0 := (self at: index). found0 := index ]].
	[ found0 = found ] assert."
	^ min