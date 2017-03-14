figures
isDegenerate
(v1 = v2 or:[ v1 = v3 or:[ v2 = v3 ]])
	ifTrue:[^ true]
	ifFalse:[
	^  (self edges first length + self edges second length ="closeTo:" (self edges third length)) or: [ 
		(self edges second length + self edges third length ="closeTo:" (self edges first length)) or: [ 
		 self edges third length + self edges first length ="closeTo:" (self edges second length) ] ]]