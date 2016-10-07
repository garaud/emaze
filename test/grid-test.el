;;; Code:

(require 'emaze)
(require 'ert)

(ert-deftest compute-cell-number ()
  "Compute the number of grid cells."
  (should (equal (emaze-ncell (emaze-make-grid 5 5)) 25))
  (should (equal (emaze-ncell (emaze-make-grid 7 3)) 21))
  (should (equal (emaze-ncell (emaze-make-grid 1 1))  1))
  (should (equal (emaze-ncell (emaze-make-grid 0 0))  0))
  (should (equal (emaze-ncell (emaze-make-grid 2 2)) 4)))

(ert-deftest compute-height ()
  "Compute the height of a grid."
  (should (equal (emaze-height (emaze-make-grid 5 2)) 5))
  (should (equal (emaze-height (emaze-make-grid 1 10)) 1)))

(ert-deftest compute-width ()
  "Compute the width of a grid."
  (should (equal (emaze-width (emaze-make-grid 5 2)) 2))
  (should (equal (emaze-width (emaze-make-grid 1 1)) 1))
  (should (equal (emaze-width (emaze-make-grid 1 10)) 10)))


;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; grid-test.el ends here
