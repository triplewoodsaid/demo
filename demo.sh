#!/bin/bash
if [ -d $1 ]; then
  echo 'error: dir exists'
  exit
else
  mkdir $1
  cd $1
  mkdir css js
  touch index.html css/style.css js/main.js
  FL1="index.html" 
  FL2="css/style.css"
  FL3="js/main.js"
  echo 'h1{color: red;}' >>$FL2
  echo -e ' var string = "Hello World" \n alert(string)'  >>$FL3
  echo -e '<!DOCTYPE>
	 <title>Hello</title> 
	<link rel="stylesheet" href="./css/style.css" /> 
	<head>
	<script src="./js/main.js"></script>
	</head>
	<h1>Hi</h1> ' >>$FL1
  echo 'success'
  exit
fi