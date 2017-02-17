private
roots

	^ roots ifNil: [ roots := repository elements select: [ :each |
						(self isPrimitiveTypeOrObject: each) not
						and: [ (repository containerOf: each) isEmptyOrNil ]] ]