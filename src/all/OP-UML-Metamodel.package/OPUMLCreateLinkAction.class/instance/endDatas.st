accessing
endDatas
	"The LinkEndData that specifies the values to be placed on the Association ends for the new link."
	^ endDatas ifNil: [ endDatas := OrderedCollection new ]