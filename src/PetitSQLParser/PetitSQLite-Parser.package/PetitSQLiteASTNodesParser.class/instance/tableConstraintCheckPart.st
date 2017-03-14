statements-elements
tableConstraintCheckPart
	^super tableConstraintCheckPart ==> [:token | 
		| newConstr |

		newConstr := SQLTableConstraintNode new.
		
		newConstr isCheck: true.		
		newConstr expressionString: token second trimRight.

		newConstr]