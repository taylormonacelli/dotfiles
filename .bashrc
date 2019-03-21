. ~/.bash.d/ruby.sh
. ~/.bash.d/asciidoc.sh
. ~/.bash.d/bash.sh
. ~/.bash.d/cabal.sh
. ~/.bash.d/chef.sh
. ~/.bash.d/common.sh
. ~/.bash.d/docker.sh
. ~/.bash.d/emacs.sh
. ~/.bash.d/enscript.sh
. ~/.bash.d/fzf.sh
. ~/.bash.d/git.sh
. ~/.bash.d/golang.sh
. ~/.bash.d/google-cloud-sdk.sh
. ~/.bash.d/mutt.sh
. ~/.bash.d/ncurses.sh
. ~/.bash.d/nginx.sh
. ~/.bash.d/node.sh
. ~/.bash.d/python3.sh
. ~/.bash.d/selenium.sh
. ~/.bash.d/serverless.sh
. ~/.bash.d/sphinx-doc.sh
. ~/.bash.d/sqlite3.sh
. ~/.bash.d/ssh.sh
. ~/.bash.d/travis.sh
. ~/.bash.d/vault.sh
. ~/.bash.d/.alias
. ~/.bash.d/gnu.sh
. ~/.bash.d/openssl.sh

case "$(uname)" in
CYGWIN_NT*)
	. ~/.bash.d/cygwin.sh
	;;

Darwin)
	. ~/.bash.d/macos.sh
	;;
esac
