mkdir build
mkdir dist
haxe build.hxml
copy /B src\js\prefix.js + /B build\haxe-out.js + /B src\js\suffix.js dist\nape.js