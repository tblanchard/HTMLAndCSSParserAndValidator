Class {
	#name : #CSSMarginWidthValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSMarginWidthValue >> isValid [

	| s | 
	s := self valueString trimBoth.
	s = 'auto' ifTrue: [^true].
	(CSSLengthValue fromString: s) isValid ifTrue: [^true].
	(CSSPercentageValue fromString: s) isValid ifTrue: [^true].
	^false
]
