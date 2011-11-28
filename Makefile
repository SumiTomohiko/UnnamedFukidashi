
NAME = UnnamedFukidashi
PKG = $(NAME).ttf
SRC = doit
DIST = $(PKG) COPYING Makefile README UnnamedFukidashi.ttf doc doit \
       takao-fonts-ttf
VERSION = 1.0.0
DIST_DIR = $(NAME)-$(VERSION)

all: $(PKG)

$(PKG): $(SRC)
	./$(SRC)

clean:
	rm -f $(PKG)

install:
	cp $(PKG) $(HOME)/.fonts
	fc-cache

dist:
	rm -rf $(DIST_DIR)
	mkdir $(DIST_DIR)
	cp -r $(DIST) $(DIST_DIR)
	tar cf - $(DIST_DIR) | xz --compress > $(DIST_DIR).tar.xz
	rm -rf $(DIST_DIR)

# vim: tabstop=8 shiftwidth=8 noexpandtab
