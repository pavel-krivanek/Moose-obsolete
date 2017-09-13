accessing
endDatas
	"The LinkEndData identifying the values on the ends of the links acting on by this LinkAction."
	^ endDatas ifNil: [ endDatas := OrderedCollection new ]