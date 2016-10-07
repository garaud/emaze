;;; emaze.el --- Maze generator for Emacs

;; Authors: TODO
;; URL: TODO
;; Keywords: game, maze
;; Version: 0.1
;; Package-Requires: ((pkg-info "0.4"))


;;; Commentary:
;;
;;
;; Maze generator for Emacs
;;
;;; Code:

(require 'cl-lib)

(defun make-grid (height width)
  "Make a grid with height `HEIGHT' and width `WIDTH'."
  (make-list height (make-list width 'c)))

(defun ncell (grid)
  "Count the number of cells for a given `GRID'."
  (apply #'+ (cl-map 'list #'length grid)))

(defun height (grid)
  "Height of the grid `GRID'."
  (length grid))

(defun width (grid)
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
