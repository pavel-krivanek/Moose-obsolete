construction
computeLabel
	|desObjs desAttribs|
	desObjs := self descendants flatCollect: [:aDes | aDes concept objects].
	desAttribs := self descendants flatCollect: [:aDes | aDes concept attributes].
	self labels: (Array with: (self labelAttributes: desAttribs) with: (self labelObjects: desObjs)).