accessing
extends: anExtend
	"The Extend relationships owned by this UseCase."
	self extends
		removeAll;
		addAll: anExtend