Class {
	#name : #CSSAngleValue,
	#superclass : #CSSUnitizedNumberValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAngleValue >> allowableUnits [

	^#('deg' 'grad' 'rad')
]
