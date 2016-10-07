;;; Code:

(require 'emaze)
(require 'ert)

(ert-deftest compute-cell-number ()
  "Compute the number of grid cells."
  (should (equal (ncell (make-grid 5 5)) 25))
  (should (equal (ncell (make-grid 7 3)) 21))
  (should (equal (ncell (make-grid 1 1))  1))
  (should (equal (ncell (make-grid 0 0))  0))
  (should (equal (ncell (make-grid 2 2)) 4)))

(ert-deftest compute-height ()
  "Compute the height of a grid."
  (should (equal (height (make-grid 5 2)) 5))
  (should (equal (height (make-grid 1 10)) 1)))


;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; grid-test.el ends here
