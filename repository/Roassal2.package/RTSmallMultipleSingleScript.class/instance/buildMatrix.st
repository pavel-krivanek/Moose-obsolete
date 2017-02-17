hooks
buildMatrix
	| b |
	b := RTGradualDSM new.
	b view: view.

	"objectsX and objectsY refers to a dictionary in which the key is the string contained in a column,
	and values is an array containing the connections"
	objectsY := dic associations groupedBy: [ :ass | ass key key ].
	objectsX := dic associations groupedBy: [ :ass | ass key value ].
	
	b objectsY: ((objectsY associations sortedAs: sortX) asArray collect: #key).
	b objectsX: ((objectsX associations sortedAs: sortY) asArray collect: #key).
	
	b score: [ :assoc | scale rtValue: (dic at: assoc ifAbsent: [ 0 ]) ].
	b build.
	view signalUpdate 