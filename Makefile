
PKG = UnnamedFukidashi.ttf
SRC = doit

all: $(PKG)

$(PKG): $(SRC)
	./$(SRC)

clean:
	rm -f $(PKG)

install:
	cp $(PKG) $(HOME)/.fonts
	fc-cache

# vim: tabstop=8 shiftwidth=8 noexpandtab
