;;; emaze.el --- Mazes generator for Emacs

;; Authors: Damien Garaud
;; URL: https://github.com/garaud/emaze
;; Keywords: game, maze
;; Version: 0.1
;; Package-requires: ((dash "2.13.0"))

;;; Commentary:
;;
;;
;; Mazes generator for Emacs
;;
;;; Code:

(require 'dash)

(defun emaze-make-grid (height width)
  "Make a grid with height `HEIGHT' and width `WIDTH'."
  (let (grid)
    (dolist (row (number-sequence 0 (- height 1)) grid)
      (setq grid (cl-concatenate 'list grid (-row-gen row width))))))

(defun -row-gen (row colwidth)
  "Generate a list of cell for the row `ROW' of width `COLWIDTH'."
  (list (-map (lambda (x) (list row x))
                (number-sequence 0 (- colwidth 1)))))

(defun emaze-ncell (grid)
  "Count the number of cells for a given `GRID'."
  (apply #'+ (-map 'length grid)))

(defun emaze-height (grid)
  "Height of the grid `GRID'."
  (length grid))

(defun emaze-width (grid)
  "Width of the grid `GRID'."
  (length (car grid)))


;; +--------+
;; |        |
;; |        |
;; |        |
;; |        |
;; +--------+

(defun draw-line (n)
  "Draw a line with `N' chars."
  (insert "--------"))




(provide 'emaze)

;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; emaze.el ends here
