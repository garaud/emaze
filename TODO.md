# TODO

* make a better printed representation of a grid (a newline after each row)

* improve the maze initialization setting the well nort/south/east/west values
  (e.g. cell a the frontiers)

* try the 'ht' library https://github.com/Wilfred/ht.el

* print (or insert) a mazes in the current buffer (kind of `make-grid` which
  draws all the cells). First, implement a function which writes ASCII chars in
  a string. Then, it will be easy to print or insert it.

* use `package-install-from-buffer` to have a development environment
  http://endlessparentheses.com/new-in-emacs-25-1-easily-install-multifile-package-from-a-directory.html
  or use Cask which is pretty goot at it

* begin to implement the first and simple mazes generator algorithm: the binary
  tree algorithm
