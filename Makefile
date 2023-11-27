make brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"	
	/bin/bash ./brew.sh	

make install:
	sh ./install.sh
	sh ./macos.sh