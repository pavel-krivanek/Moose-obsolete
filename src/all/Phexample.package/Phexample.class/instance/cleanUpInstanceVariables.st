private
cleanUpInstanceVariables
	| names |
	names := self class allInstVarNames asOrderedCollection.
	names removeAll: Phexample allInstVarNames.
	names do: [ :name | self instVarNamed: name put: nil ]