private
build: aParser prefix: aChoiceParser
	^ aChoiceParser star , aParser map: [ :ops :term | ops reverse inject: term into: [ :result :operator | operator first value: operator second value: result ] ]