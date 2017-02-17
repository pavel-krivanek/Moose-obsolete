accessing - wizard mangement
outputValue

	|tmpResult|
	tmpResult := OrderedCollection new.
	self optionsAndModels keysAndValuesDo: [:aLabel :aModel | 
		tmpResult add: (aLabel ->aModel contents)
		].
	^ tmpResult