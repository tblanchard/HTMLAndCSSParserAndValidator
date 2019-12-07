Class {
	#name : #CSSFrequencyValue,
	#superclass : #CSSUnitizedNumberValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSFrequencyValue >> allowableUnits [

	^#( 'hz' 'khz')
]

{ #category : #'as yet unclassified' }
CSSFrequencyValue >> isValid [

	^super isValid and: [valueString asNumber >= 0]
]
