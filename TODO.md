# TODO

* Is it worth to use (vector) to store the coordinates or the cell-hash-table
  e.g. `(vector (vector 1 2 3) (vector 3 4 5) (vector 6 7 8))`. It will be
  possible to have a constant-time access to the cells?

* print (or insert) a mazes in the current buffer (kind of `make-grid` which
  draws all the cells). First, implement a function which writes ASCII chars in
  a string. Then, it will be easy to print or insert it.
  - hint: maybe you can user `table-insert`.

* begin to implement the first and simple mazes generator algorithm: the binary
  tree algorithm
