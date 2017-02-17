grammar-classes-method
methodModifierNotAnnotation

	^ (self tokenFor: 'abstract')
		/ (self tokenFor: 'final')
		/ (self tokenFor: 'native')
		/ (self tokenFor: 'protected')
		/ (self tokenFor: 'private')
		/ (self tokenFor: 'public')
		/ (self tokenFor: 'static')
		/ (self tokenFor: 'strictfp') 
		/ (self tokenFor: 'synchronized') 