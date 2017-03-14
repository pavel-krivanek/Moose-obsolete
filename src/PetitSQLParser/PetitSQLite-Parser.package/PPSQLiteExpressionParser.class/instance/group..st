specifying
group: aOneArgumentBlock
	"Defines a priority group by evaluating aOneArgumentBlock."
	
	operators := Dictionary new.
	child := [ 
		aOneArgumentBlock value: self.
	 	self buildOn: child ]
			ensure: [ operators := nil ]