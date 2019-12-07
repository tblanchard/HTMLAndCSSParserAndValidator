Class {
	#name : #CSSRelativeSizeValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSRelativeSizeValue >> isValid [

	^#( 'smaller' 'larger' ) includes: self valueString trimBoth
]
