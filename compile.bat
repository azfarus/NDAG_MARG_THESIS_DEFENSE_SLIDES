@echo off
REM Compile LaTeX document with bibliography and SVG images in nonstop mode

pdflatex --shell-escape -interaction=nonstopmode CleanEasy.tex
biber CleanEasy
pdflatex --shell-escape -interaction=nonstopmode CleanEasy.tex
pdflatex --shell-escape -interaction=nonstopmode CleanEasy.tex

echo.
echo Build finished.
exit
