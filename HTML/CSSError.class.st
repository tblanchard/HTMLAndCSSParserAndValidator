Class {
	#name : #CSSError,
	#superclass : #HtmlError,
	#category : #'HTML-CSS-Errors'
}

{ #category : #'as yet unclassified' }
CSSError >> isCSSError [

	^true
]

{ #category : #'as yet unclassified' }
CSSError >> printOn: aStream [

	super printOn: aStream.

]

{ #category : #'as yet unclassified' }
CSSError >> title [

	| tt |
	tt := self class name. 
	^(tt last: tt size - 3) asCapitalizedPhrase.
	
]
