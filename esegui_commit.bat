@echo off
echo --- STATO GIT ---
git status
echo.
echo --- PREPARAZIONE COMMIT ---
git add .
echo Tutti i file modificati sono stati aggiunti (staged).
echo.
set /p CommitMessage="Inserisci messaggio di commit (premi Invio per 'Aggiornamento progetto'): "
if "%CommitMessage%"=="" set CommitMessage=Aggiornamento progetto
echo.
echo Eseguo commit con messaggio: "%CommitMessage%"
git commit -m "%CommitMessage%"
echo.
echo --- ESECUZIONE PUSH ---
git push
echo.
echo Operazione completata.
pause
