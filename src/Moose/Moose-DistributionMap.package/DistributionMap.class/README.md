DistributionMap is a nice visualization to render container and their elements based on properties. 

See Stéphane Ducasse, Tudor Gîrba and Adrian Kuhn, Distribution Map, Proceedings of 22nd IEEE International Conference on Software Maintenance (ICSM '06), 203–212, IEEE Computer Society, 2006, 28%, PDF, DOI.

The title of a distribution map can be changed as well as the colors used. 
There are different ways to specific the parts and their containers. 

Here we define the containers and how the elements are omputed based on such containers.

	|dm |
	dm := self
			onContainers: Collection withAllSubclasses  
			elements: #allInstVarNames 
			properties: [:element | element size > 5].
	dm title: 'Collection subclasses and their instance variables'.
	dm render. 
	dm open.

The default colors can be changed to. However, the colors: message should be send before the element description.
Here is a non executable illustration. 
	| dm |
	dm := DistributionMap new.
	dm colors: {(Color r: 0.6 g: 0.0 b: 0.0). (Color r: 0.0 g: 0.0 b: 0.6). (Color r: 1.0 g: 0.6 b: 0.0). (Color r: 0.0 g: 1.0 b: 1.0). (Color r: 0.0 g: 1.0 b: 0.0). (Color r: 1.0 g: 0.753 b: 0.796). (Color r: 0.6 g: 0.2 b: 0.0). (Color r: 0.4 g: 0.0 b: 0.6). (Color r: 1.0 g: 1.0 b: 0.0). (Color r: 0.8 g: 0.8 b: 0.8)}.
	dm	onContainers: (model allModelPackages) 
		elements: #classes 
		properties: [ :cl | (cl authors sortedCounts) ifNotEmpty: [ (cl authors sortedCounts) first value name]].
	dm title: 'Authors Map of ', model name.
	dm render.
	dm open.