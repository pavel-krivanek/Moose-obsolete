public - recursive nodes
recursiveNodes: aDataStructure forEach: aOneArgBlock
	"This method enables one to create recursive nested nodes"
	
	"
	Here is an example:

-=-=-=-=	
	allElements := #(((1 2 (39 ) 2 )) 3).
	b := RTMondrian new.
	b recursiveNodes: allElements forEach: [ :elements |
	    b shape rectangle.
	    b nodes: elements forEach: [ :el |
	        el isArray ifTrue: [ b recurTo: el ]
	    ] ].
	b
-=-=-=-=

	Another example:
-=-=-=-=
    root := '/Users/alexandrebergel/Documents' asFileReference.
    b := RTMondrian new.
    b
        recursiveNodes: root
        forEach: [ :aFileReference | 
            b shape box if: [ :aFile | aFile basename endsWith: '.pdf' ] color: Color green.
            aFileReference isDirectory
                ifTrue: [ b nodes: aFileReference children forEach: [ :aFileRef | b recurTo: aFileRef ] ]
                ifFalse: [ b node: aFileReference ].
            b layout grid ].
    b
-=-=-=-=
	"
	
	recurrentBlock := aOneArgBlock.
	aOneArgBlock value: aDataStructure.
	recurrentBlock := nil