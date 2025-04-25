PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
INSTALLDIR=/opt/urban-cli
TARGET=urban-cli

install:
	mkdir -p $(INSTALLDIR)
	cp Main.rb Search.rb Random.rb $(INSTALLDIR)/
	chmod +x $(INSTALLDIR)/Main.rb

	echo "#!/bin/sh" | sudo tee $(BINDIR)/$(TARGET) > /dev/null
	echo "$(INSTALLDIR)/Main.rb \"\$$@\"" | sudo tee -a $(BINDIR)/$(TARGET) > /dev/nsudo chmod +x $(BINDIR)/$(TARGET)

uninstall:
	rm -f $(BINDIR)/$(TARGET)
	rm -rf $(INSTALLDIR)

