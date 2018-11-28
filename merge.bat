::merge branh 1 to branch 2

echo "case senesitive"
set \p 1stBranch= ""
set \p 2ndBranch= ""

git checkout %1stBranch%
git pull %1stBranch%

git checkout %2ndBranch%
git pull %2ndBranch%

