Class {
	#name : #HtmlDTDMatchCDATA,
	#superclass : #HtmlDTDMatchExpression,
	#classVars : [
		'CData'
	],
	#category : #'HTML-Validator'
}

{ #category : #'as yet unclassified' }
HtmlDTDMatchCDATA class >> cdata [

	^CData isNil ifTrue: [CData := self new] ifFalse: [CData]
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchCDATA >> allowedElements [

	^#()
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchCDATA >> allowsItem: aTag [

	^(aTag asUppercase findString: 'CDATA') > 0
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchCDATA >> initialize [

	super initialize.
	expression := '#CDATA'
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchCDATA >> printOn: aStream [

	aStream nextPutAll: expression
]

{ #category : #'as yet unclassified' }
HtmlDTDMatchCDATA >> validateChildren: aStream ofNode: aNode [

	^(aStream atEnd not and: [self allowsItem: aStream peek dtdTag]) 
		ifTrue: [aStream next. true] 
		ifFalse: [false]

]
