Class {
	#name : #HtmlFatalError,
	#superclass : #HtmlError,
	#category : #'HTML-DOM-Errors'
}

{ #category : #'as yet unclassified' }
HtmlFatalError >> isFatal [

	^true
]

{ #category : #'as yet unclassified' }
HtmlFatalError >> printOn: aStream [

	super printOn: aStream.
	'ERROR!  This page is much too broken to parse.' printOn: aStream.
]
