# Runs the application
run: contacts
	@./contacts
	@echo "Starting Contacts..."

# Complies the entire application
contacts: main.cpp helpers.cpp commands.cpp
	@echo "Compiling Application..."
	@g++ -std=c++11 -o contacts main.cpp helpers.cpp commands.cpp
	@echo "Compilation complete!\n"

# Installs the application to /usr/local/bin making it globally accessible
install: contacts
	@echo "Installing application to /usr/local/bin"
	@sudo mv contacts /usr/local/bin/contacts
	@echo "Installation complete!"