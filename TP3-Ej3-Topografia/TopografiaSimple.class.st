"
Topografia simple <<Leaf Composite>>
"
Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#instVars : [
		'proporcionDeAgua'
	],
	#category : #'TP3-Ej3-Topografia-Model'
}

{ #category : #'private - accessing' }
TopografiaSimple >> distribucion [
	"Devuelve un codigo que representa si es tierra o agua"

	^ self proporcionDeAgua asString , self proporcionDeTierra asString
]

{ #category : #accesing }
TopografiaSimple >> proporcionDeAgua [
	^ proporcionDeAgua
]

{ #category : #accesing }
TopografiaSimple >> proporcionDeAgua: aNumber [
	proporcionDeAgua := aNumber
]

{ #category : #accesing }
TopografiaSimple >> proporcionDeTierra [
	" 
	agua 1 xor 1 = 0
   agua 0 xor 1 = 1 
	"

	^ proporcionDeAgua bitXor: 1
]
