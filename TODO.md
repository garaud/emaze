# TODO

* make a better printed representation of a grid (a newline after each row)

* print (or insert) a mazes in the current buffer (kind of `make-grid` which
  draws all the cells). First, implement a function which writes ASCII chars in
  a string. Then, it will be easy to print or insert it.

* a cell can be an hash-table with its coordinate, but also its neighbors
  (north, south, west, east)

* use `package-install-from-buffer` to have a development environment
  http://endlessparentheses.com/new-in-emacs-25-1-easily-install-multifile-package-from-a-directory.html

* begin to implement the first and simple mazes generator algorithm
