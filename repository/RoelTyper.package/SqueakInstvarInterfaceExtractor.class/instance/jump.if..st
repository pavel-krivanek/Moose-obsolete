instruction decoding
jump: delta if: condition
	|top|
	(top := stack last)
	 isInteger ifTrue: [
		collector addAssignment: Boolean to: top.
		]
	ifFalse: [
		(top isVariableBinding and: [top key = #temp]) ifTrue: [collector addAssignment: Boolean toTmp: top value]
		ifFalse: [
			(top isVariableBinding and: [top key = #return]) ifTrue: [collector addAssignment: Boolean toReturnOf: top value]
			]
		].
	self pop.	"receiver of ifTrue or ifFalse, according to condition"
	delta < 1 ifTrue: [^self].
	self saveStacks
		at: self input pc + delta
		put:
			(stack copy)