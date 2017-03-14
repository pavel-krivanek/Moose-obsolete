initialization
selectCore 
	
	^super selectCore ==> [:token |
			| selectStmt |

			selectStmt := SQLSelectStmtNode new.

			token do: [:each |
				each isArray ifTrue: [
					('from' = each first asString asLowercase)
					ifTrue: [
						each second do:[:tables |
							tables isEmpty not ifTrue:[
								tables first isArray 
									ifTrue: [
										tables do: [:el |
											selectStmt addFrom: el second first]
										] 
									ifFalse: [selectStmt addFrom: tables first]. 
						]]]].
				('select' = each asString asLowercase)
					ifTrue: [
						token third isArray 
							ifTrue: [
								token third do: [:fields | 
									fields isArray 
										ifTrue: [ selectStmt addColumn: fields first]
										ifFalse: [(fields ~= $,) ifTrue:[selectStmt addColumn: fields]]]]]].
			selectStmt ast: token.
			selectStmt].