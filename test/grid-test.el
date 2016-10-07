;;; Code:

(require 'emaze)
(require 'ert)

(ert-deftest compute-cell-number ()
  "Compute the number of grid cells."
  (should (equal (ncell (grid 5 5)) 25))
  (should (equal (ncell (grid 2 2)) 4)))




;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; grid-test.el ends here
