PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
INSTALLDIR=/opt/urban-cli
TARGET=urban-cli

install:
	sudo mkdir -p $(INSTALLDIR)
	sudo cp Main.rb Search.rb Random.rb $(INSTALLDIR)/
	sudo chmod +x $(INSTALLDIR)/Main.rb

	# Script
	echo "#!/bin/sh" | sudo tee $(BINDIR)/$(TARGET) > /dev/null
	echo "$(INSTALLDIR)/Main.rb \"\$$@\"" | sudo tee -a $(BINDIR)/$(TARGET) > /dev/null
	sudo chmod +x $(BINDIR)/$(TARGET)

uninstall:
	sudo rm -f $(BINDIR)/$(TARGET)
	sudo rm -rf $(INSTALLDIR)
