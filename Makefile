
# Directory to put files we donn't necessarily want to overwrite
# everytime we install
PACKAGE_INSTALL=$(DESTDIR)


all:
	@echo "Nothing to do!"

install:
	@if [ -z "$(DESTDIR)" ] ; then \
		echo "\n\nDESTDIR cannot be left blank!\n\n" ; \
		exit 1 ; \
	fi


	cp -r etc ${PACKAGE_INSTALL}

	find ./etc -type f > debian/conffiles
	sed -i -e 's/^\.//' debian/conffiles
	
