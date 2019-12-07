Class {
	#name : #CSSBorderWidthValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSBorderWidthValue >> isValid [

	| val |
	val := self valueString trimBoth.
	^(#( 'thin' 'medium' 'thick' ) includes: val) or: [(CSSLengthValue fromString: val) isValid]
]
