.PHONY: install
install:
	install -m0755 bin/ytdl-clean /usr/local/bin

.PHONY: test
test:
	(cd ./test/; sh ./run_tests.sh)
