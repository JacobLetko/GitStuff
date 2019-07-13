::merge branch 1 to branch 2

cd ..

echo "case senesitive"
set /p FromBranch=
set /p ToBranch=



git checkout %FromBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorCheckout FromBranch
git pull %FromBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorPull FromBranch
git push %FromBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorPush FromBranch



git checkout %ToBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorCheckout ToBranch
git pull %ToBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorPull ToBranch



git merge %FromBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorMerge FromBranch, ToBranch
git push
			if %ERRORLEVEL% NEQ 0 GOTO ErrorPush ToBranch



git checkout %FromBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorCheckout FromBranch
git merge %ToBranch%
			if %ERRORLEVEL% NEQ 0 GOTO ErrorMerge ToBranch, FromBranch
git push
			if %ERRORLEVEL% NEQ 0 GOTO ErrorPush FromBranch




:ErrorCheckout
echo "%~1 dose not exsits"
PAUSE

:ErrorPull
echo "Can not pull from %~1"
PAUSE

:ErrorPush
ech "Can not push to %~1"
PAUSE

ErrorMerge
echo "can not merege branch %~1 into %~2"
PAUSE