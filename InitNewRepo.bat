git init
git add .
git commit -m "first commit"
set /p link= paste link now:""
git remote add origin %link%
git push -u origin master