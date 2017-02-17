api
propagateEdges: classCollection
	"Propagates relationships up in the hiGraph from the leaf nodes.
	If a collection with classes is provied, only relationships between given classes are propagated."
	| nodesToProcess propagatedRelationship srcNode dstNode srcAncestry dstAncestry  srcAncestorNodeIsAllowedClass dstAncestorNodeIsAllowedClass |
	
	nodesToProcess := Stack new.
	nodesToProcess addAll: self nodes.

	[nodesToProcess notEmpty] whileTrue: [
		srcNode := nodesToProcess pop.

		"Only check non-root nodes."
		(srcNode isRootNode) ifFalse: [
		
			"If there are outgoing relationships from this node..."
			(srcNode outgoing notEmpty) 
				ifTrue: [
					
					"Go through all original relations."
					srcNode outgoingNotPropagated do: [ :outgoingRelationship |

						"Get destination node of relationship"
						dstNode := outgoingRelationship to.
						
						srcAncestry := LinkedList new.
						dstAncestry := LinkedList new.

						"Initialize ancestries with src and dest nodes."
						srcAncestry add: srcNode.
						dstAncestry add: dstNode.
	
						"Have to bring ancestries to the same level."
						[srcAncestry last level = dstAncestry last level] whileFalse: [
							srcAncestry last level > dstAncestry last level ifTrue: [
								srcAncestry add: (srcAncestry last parent).
							]
							ifFalse: [
								dstAncestry add: (dstAncestry last parent).
							].
						].
					
						"Fill up ancestry chains by searching for either common ancestor or two separate parents that are root nodes."
						[(srcAncestry last parent == dstAncestry last parent) 
						or: 
						((srcAncestry last isRootNode) or: (dstAncestry last isRootNode))]
						whileFalse: [
							srcAncestry add: (srcAncestry last parent).
							dstAncestry add: (dstAncestry last parent).
						].

						"Now add outgoing relations from source node and its ancestry to destination node and its ancestry."
						srcAncestry do: [ :srcAncestorNode |
							
							"Relationships from all source ancestry nodes to all destination ancestry nodes."
							dstAncestry do: [ :dstAncestorNode |
								
								"Reset class restrictions. Assuming not allowed."
								srcAncestorNodeIsAllowedClass := false.
								dstAncestorNodeIsAllowedClass := false.
									
								"Add all connections in the ancestries as new relations. Except :
								 - the original relation
								 - If they are the same node
								 - if a given class restriction is not satisfied"
								((srcAncestorNode = srcNode and: (dstAncestorNode = dstNode)) 
								or: 
								(srcAncestorNode = dstAncestorNode)) 
								ifFalse: [

									classCollection isEmpty ifTrue: [
										srcAncestorNodeIsAllowedClass := true.
										dstAncestorNodeIsAllowedClass := true.
									] ifFalse: [
										"Are the classes of both nodes in the collection of allowed classes?"
										classCollection do: [ :class |
	
											srcAncestorNode model class == class ifTrue: [srcAncestorNodeIsAllowedClass := true ].
											dstAncestorNode model class == class ifTrue: [dstAncestorNodeIsAllowedClass := true ].
										].
									].
								
									"Only add the propoagated relationships if it satisfied the class restrictions."
									(srcAncestorNodeIsAllowedClass and: dstAncestorNodeIsAllowedClass) ifTrue: [
										
										"And finally, create and add a new propagated relationship."
										propagatedRelationship := MalHgPropagatedEdge 
											with: outgoingRelationship model 
											from: srcAncestorNode 
											to: dstAncestorNode.
										edges add: propagatedRelationship.
										srcAncestorNode addOutgoing: propagatedRelationship.
										dstAncestorNode addIncoming: propagatedRelationship.
									].
								].
							].
						].
					].
				].
			].
		].