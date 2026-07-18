all:
	echo "hi"

push:
	npx skills@latest add mattpocock/skills --agent claude-code --skill '*' -y
	git add .
	git commit -m "generated files on `date +'%Y-%m-%d'`";
	git push --force-with-lease
