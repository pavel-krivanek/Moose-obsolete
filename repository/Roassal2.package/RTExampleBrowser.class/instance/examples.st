instance creation
examples
	| es |
	es := RTAbstractExample allSubclasses collect: #new.
	^ es sortedAs: #label