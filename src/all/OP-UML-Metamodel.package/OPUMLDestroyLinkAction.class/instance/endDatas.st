accessing
endDatas
	"The LinkEndData that the values of the Association ends for the links to be destroyed."
	^ endDatas ifNil: [ endDatas := OrderedCollection new ]