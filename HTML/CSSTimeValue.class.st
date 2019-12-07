Class {
	#name : #CSSTimeValue,
	#superclass : #CSSUnitizedNumberValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSTimeValue >> allowableUnits [

	^#( 's' 'ms')
]

{ #category : #'as yet unclassified' }
CSSTimeValue >> isValid [

	^super isValid and: [valueString asNumber >= 0]
]
