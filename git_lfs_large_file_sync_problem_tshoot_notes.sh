cat .gitignore
cat .gitattributes
mkdir -p zprojects/pr9/node_modules/canvas/build/Release/
git status
git rm zprojects/pr9/node_modules/canvas/build/Release/librsvg-2.so.2
git commit -m "Remove librsvg-2.so.2 file"
git push
sudo apt-get install git-lfs
git lfs install
git lfs track "zprojects/pr9/node_modules/canvas/build/Release/librsvg-2.so.2"
git add .
git commit -m "Add Git LFS tracking for large file"
git push
git lfs version
git filter-branch --force --tree-filter 'rm -f zprojects/pr9/node_modules/canvas/build/Release/librsvg-2.so.2' --tag-name-filter cat -- --all
git push --force origin
