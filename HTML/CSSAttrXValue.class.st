Class {
	#name : #CSSAttrXValue,
	#superclass : #CSSValue,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAttrXValue class >> readFrom: in [

	|  pos |
	in skipSeparators.
	pos := in position.
	(in match: 'attr(') ifFalse: [in position: pos. ^nil].
	^self new valueString: (in upTo: $)) trimBoth
	
	
]

{ #category : #'as yet unclassified' }
CSSAttrXValue >> isValid [

	^(self valueString beginsWith: 'attr(') and: [self valueString endsWith: ')']
]
