;;; emaze.el --- Maze generator for Emacs

;; Authors: TODO
;; URL: https://github.com/garaud/emaze
;; Keywords: game, maze
;; Version: 0.1

;;; Commentary:
;;
;;
;; Maze generator for Emacs
;;
;;; Code:

(require 'cl-lib)

(defun emaze-make-grid (height width)
  "Make a grid with height `HEIGHT' and width `WIDTH'."
  (make-list height (make-list width 'c)))

(defun emaze-ncell (grid)
  "Count the number of cells for a given `GRID'."
  (apply #'+ (cl-map 'list #'length grid)))

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
