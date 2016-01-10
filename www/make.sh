# cat src/Native/*.wisp | wisp > src/Native/${path}.js
for f in src/Native/*.wisp ; do cat "$f" | wisp --no-map > "${f%.wisp}.js" ; done
elm make src/Main.elm --output=js/index.js
