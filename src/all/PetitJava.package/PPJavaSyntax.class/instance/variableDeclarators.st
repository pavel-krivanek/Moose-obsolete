grammar-classes
variableDeclarators

	^ variableDeclarator , ((self tokenFor: ','), variableDeclarator) star