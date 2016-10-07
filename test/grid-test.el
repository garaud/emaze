;;; Code:

(require 'emaze)
(require 'ert)

(ert-deftest compute-cell-number ()
  "Compute the number of grid cells."
  (should (equal (ncell (make-grid 5 5)) 25))
  (should (equal (ncell (make-grid 7 3)) 21))
  (should (equal (ncell (make-grid 2 2)) 4)))




;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; grid-test.el ends here
