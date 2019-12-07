Class {
	#name : #CSSPercentageValue,
	#superclass : #CSSUnitizedNumberValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSPercentageValue >> allowableUnits [

	^#( '%' )
]

{ #category : #'as yet unclassified' }
CSSPercentageValue >> isValid [

	^super isValid and: [valueString asNumber >= 0]
]
