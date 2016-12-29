run: app
	./app

app: main.cpp
	g++ -o app main.cpp

push: .git
	git push -u origin master

commit:
    git commit -m "$m"