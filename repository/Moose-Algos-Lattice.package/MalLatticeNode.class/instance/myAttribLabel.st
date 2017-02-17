ancestorsLabel
myAttribLabel
		(self anscentorLabel isEmpty) 
			ifFalse: [^(self concept attributes)asSet difference: (self anscentorLabel) asSet] 
			ifTrue: [^self concept attributes]
		