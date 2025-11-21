echo off
rem Deletar Exportados
rmdir .\..\exported-wiki /S /Q
rem recria diretorio
mkdir .\..\exported-wiki

obsidian-export . ..\exported-wiki
cd ..\exported-wiki
xcopy .\ "C:\Users\edu_r\Documents\fontes\quartz\content\" /h /i /c /k /e /r /y
c:
cd C:\Users\edu_r\Documents\fontes\quartz\content
hugo-obsidian -input=..\ -output=..\assets\indices -index -root=..\
cd ..

npx quartz build