Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'unaTierra',
		'unAgua',
		'unaMixta'
	],
	#category : #'TP3-Ej3-Topografia-Tests'
}

{ #category : #running }
TopografiaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	
	super setUp.
	
	unAgua := Agua new.
	unaTierra := Tierra new.
	
	unaMixta := Topografia topografia1: unAgua topografia2: unAgua 
		topografia3: unAgua topografia4: unaTierra
]

{ #category : #tests }
TopografiaTest >> testEquality [ 

	self assert: ( unAgua ) equals: ( Agua new ).
	self assert: ( unaTierra ) equals: ( Tierra new ).
	
	self assert: ( unaMixta ) equals: ( Topografia topografia1: unAgua topografia2: unAgua 
		topografia3: unAgua topografia4: unaTierra ).
	
	self deny: ( unaTierra ) equals: ( unAgua ).
	self deny: ( unaTierra ) equals: ( unaMixta ).
	self deny: ( unAgua ) equals: ( unaMixta ).
	
	
]

{ #category : #tests }
TopografiaTest >> testProporcionDeAguaProporcionDeTierra [

	self assert: ( unAgua proporcionDeAgua ) equals: (1).
	self assert: ( unAgua proporcionDeTierra  ) equals: (0).
	self assert: ( unaTierra proporcionDeAgua ) equals: (0).
	self assert: ( unaTierra proporcionDeTierra ) equals: (1).
	self assert: ( unaMixta proporcionDeAgua ) equals: (0.75).
	self assert: ( unaMixta proporcionDeTierra ) equals: (0.25).
	
	unaMixta := Topografia topografia1: unAgua topografia2: unAgua topografia3: unaTierra topografia4: unaMixta.
	
	self assert: ( unaMixta proporcionDeAgua ) equals: (0.6875).
	self assert: ( unaMixta proporcionDeTierra  ) equals: (0.3125)
	
	
]
