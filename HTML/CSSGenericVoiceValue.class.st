Class {
	#name : #CSSGenericVoiceValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSGenericVoiceValue >> isValid [

	^#( 'male' 'female' 'child' ) includes: self valueString trimBoth
]
