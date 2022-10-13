
cd ..

pwd

dir

# Clean all of the node_modules folders recursively in all of the sub directories
Get-ChildItem -Path . -Filter "*node_modules*" -Directory -Recurse -Force | Remove-Item -Force -Recurse
