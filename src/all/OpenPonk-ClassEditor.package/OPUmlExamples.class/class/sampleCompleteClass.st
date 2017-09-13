samples
sampleCompleteClass
	| model class string object number float integer |
	string := OPUMLPrimitiveType new name: 'String'.
	object := OPUMLPrimitiveType new name: 'Object'.
	number := OPUMLPrimitiveType new name: 'Number'.
	float := OPUMLPrimitiveType new name: 'Float'.
	integer := OPUMLPrimitiveType new name: 'Integer'.
	model := OPUMLModel new name: 'Complete Class Model'.
	class := OPUMLClass new name: 'CompleteClass'.
	class isAbstract: true.
	model packagedElements add: class.
	"	class addStereotype: (OPFAMIXStereotype named: 'class').
	class addStereotype: (OPFAMIXStereotype named: 'example')."
	"class stereotypes first
		addIcon:
			(OPFAMIXImage new
				content:
					'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3gwRESYZc+TopwAAABl0RVh0Q29tbWVudABDcmVhdGVkIHdpdGggR0lNUFeBDhcAAABDSURBVDjLY2CgEDBC6f9EqMEL/pMoDgdMlHqBhRTbCPnvP6n+JsvPVA+DgTeAUEJiJBA+jPgk/xPDZ6E0VqjmhYEDAKlHDwzayLTLAAAAAElFTkSu
QmCC')."
	class ownedAttributes
		add:
			(OPUMLProperty new
				name: 'normal';
				type: integer).
	class ownedAttributes
		add:
			(OPUMLProperty new
				name: 'derived';
				isDerived: true).
	class ownedAttributes
		add:
			(OPUMLProperty new
				name: 'collection';
				type: float;
				lowerValue: (OPUMLLiteralInteger new value: 0);
				upperValue: (OPUMLLiteralUnlimitedNatural new value: '*')).
	class ownedAttributes
		add:
			(OPUMLProperty new
				name: 'static';
				type: string;
				isStatic: true).
	class ownedOperations add: (OPUMLOperation new name: 'basicMethod').
	class ownedOperations
		add:
			((OPUMLOperation new name: 'staticMethod')
				in: [ :op | 
					op ownedParameters
						add:
							(OPUMLParameter new
								name: 'number';
								type: number) ];
				isStatic: true).
	class ownedOperations
		add:
			((OPUMLOperation new name: 'abstractMethod')
				in: [ :op | 
					op ownedParameters
						add:
							(OPUMLParameter new
								name: 'return';
								type: string;
								direction: OPUMLParameterDirectionKind return);
						add:
							(OPUMLParameter new
								name: 'arg1';
								type: number);
						add:
							(OPUMLParameter new
								name: 'arg2';
								type: string;
								lowerValue: (OPUMLLiteralInteger new value: 0);
								upperValue: (OPUMLLiteralUnlimitedNatural new value: 1)) ];
				isAbstract: true).
	^ model