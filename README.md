# Abschlussbericht .tex Dateien

Es ist vorgesehen, dass jeder für eine local.tex Datei selbst verantwortlich ist, sodass langen Compile-Zeiten aus dem Weg gegangen werden kann.

## Hinweis zum Compilen
Die Vorlage basiert auf https://github.com/sse-labs/thesis-template dem Template. Dieses nutzt XeTeX. Da zusätzlich "minted" als package genutzt wird, muss 
 * https://pygments.org/ installiert sein
 * und ein Shell-Escape genutzt werden -> In TexStudio sollte dies durch Magic-Comment automatisch funktionieren.
    * falls dies nicht funktioniert kann unter **Optionen-> TexStudio konfigurieren -> Befehle** der Parameter --shell-escape zu dem XeLaTeX Befehl hinzugefügt werden (xelatex.exe -synctex=1 -interaction=nonstopmode --shell-escape %.tex)
