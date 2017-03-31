accessing
reversed
	self onProcess: [ :processor :anExample | 
		self action ifNotNil: [ self example == anExample ifFalse: [ self action value: anExample ] ].
		anExample directDependents do: [ :each | processor process: each ] ]