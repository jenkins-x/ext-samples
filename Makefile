all: build

build:
	go build -o bin/jx-brie brie.go

tag:
	git add --all
	git commit -m "release ${VERSION}" --allow-empty # if first release then no verion update is performed
	git tag -fa v${VERSION} -m "Release version $VERSION"
	git push origin v${VERSION}