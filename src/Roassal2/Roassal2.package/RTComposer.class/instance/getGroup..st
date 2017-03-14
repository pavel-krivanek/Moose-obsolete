accessing
getGroup: groupId
	"returns the elements grouped under the given key
	ex:
	
		composer getGroup: id
	"
	^mapping at: groupId.