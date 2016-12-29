run: app
	./app

app: main.cpp
	g++ -o app main.cpp