Class {
	#name : #HtmlDTDMatchEmpty,
	#superclass : #HtmlDTDMatchExpression,
	#classVars : [
		'Empty'
	],
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchEmpty class >> empty [

	^Empty isNil ifTrue: [Empty := self new] ifFalse: [Empty]
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchEmpty >> allowedElements [

	^#()
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchEmpty >> allowsItem: aTag [

	^false
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchEmpty >> initialize [

	super initialize.
	expression := 'EMPTY'
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchEmpty >> isEmpty [

	^true
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchEmpty >> printOn: aStream [

	aStream nextPutAll: 'EMPTY'
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchEmpty >> validateChildren: aStream ofNode: aNode [

	^(aStream atEnd) 
		ifTrue: [true] 
		ifFalse:
		[
			aNode addError: (HtmlTagMustBeEmptyError new).
			false
		]

]
