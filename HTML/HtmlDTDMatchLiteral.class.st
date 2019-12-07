Class {
	#name : #HtmlDTDMatchLiteral,
	#superclass : #HtmlDTDMatchExpression,
	#classVars : [
		'LiteralsByTagAsSymbol'
	],
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral class >> expression: aTag [

	LiteralsByTagAsSymbol isNil ifTrue: [LiteralsByTagAsSymbol := WeakValueDictionary new].

	^LiteralsByTagAsSymbol at: aTag asSymbol ifAbsentPut: [self new expression: aTag].	
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral class >> on: aStringOrStream [

	| in out delims s |

	in := aStringOrStream isStream 
		ifFalse: [ReadStream on: aStringOrStream]
		ifTrue:[aStringOrStream].

	delims := ' ()|*?+-,&'.
	out := WriteStream on: String new.

	in skipSeparators.
	[in atEnd or: [delims includes: in peek]] whileFalse: [out nextPut: in next].
	s := out contents.
	^s = 'EMPTY' 
		ifTrue: [HtmlDTDMatchEmpty empty]	
		ifFalse: 
		[
			(s asUppercase findString: 'CDATA') > 0 
			ifTrue:[HtmlDTDMatchCDATA cdata]
			ifFalse:[HtmlDTDMatchLiteral new expression: s]
		]
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral >> allowedElements [

	^ Array with: self
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral >> allowsItem: aTag [

	^expression = aTag
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral >> consumeStream: in [

	expression = in peek ifTrue:[in next]
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral >> isLiteral [

	^true
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral >> printOn: aStream [

	aStream nextPut: $"; nextPutAll: expression; nextPut:$".
	
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchLiteral >> validateChildren: aStream ofNode: aNode [

	^(aStream atEnd not and: [expression = aStream peek dtdTag]) 
		ifTrue: [aStream next. true] 
		ifFalse: [false]

]
