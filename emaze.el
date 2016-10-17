;;; emaze.el --- Mazes generator for Emacs

;; Authors: Damien Garaud
;; URL: https://github.com/garaud/emaze
;; Keywords: game, maze
;; Version: 0.1
;; Package-requires: ((dash "2.13.0") (ht "2.1"))

;;; Commentary:
;;
;;
;; Mazes generator for Emacs
;;
;;; Code:

(require 'dash)
(require 'ht)


(defvar emaze-height-default '("5"))
(defvar emaze-width-default '("5"))


(defun gen-grid ()
  "Generate a grid (HEIGHT, WIDTH)."
  (interactive
   (progn
     (let ((buffer (generate-new-buffer "*emaze*"))
           (height (string-to-int
                    (read-from-minibuffer "Height: " nil nil nil nil emaze-height-default)))
           (width (string-to-int
                   (read-from-minibuffer "Width: " nil nil nil nil emaze-width-default))))
       (switch-to-buffer buffer)
       (table-insert height width 3 1)))))



;;(get-buffer-create "*emaze*")

(defun emaze-make-grid (height width)
  "Make a grid with height `HEIGHT' and width `WIDTH'."
  (let (grid)
    (dolist (row (number-sequence 0 (- height 1)) grid)
      (setq grid (-concat grid (emaze--row-gen row width))))))

(defun emaze--row-gen (row colwidth)
  "Generate a list of cell for the row `ROW' of width `COLWIDTH'."
  (list (-map (lambda (y) (emaze-make-cell row y))
              (number-sequence 0 (- colwidth 1)))))

(defun emaze-ncell (grid)
  "Count the number of cells for a given `GRID'."
  (apply #'+ (-map 'length grid)))

(defun emaze-get-cell (x y grid)
  "Get the cell (X, Y) from the GRID.

Return nil if not found."
  (if (and (>= x 0) (>= y 0))
      (nth y (nth x grid))))

(defun emaze-rand-cell (grid)
  "Get a random cell from the GRID."
  (let ((x (random (emaze-height grid)))
        (y (random (emaze-width grid))))
    (emaze-get-cell x y grid)))

(defun emaze-height (grid)
  "Height of the grid `GRID'."
  (length grid))

(defun emaze-width (grid)
  "Width of the grid `GRID'."
  (length (car grid)))

(defun emaze-make-cell (x y)
  "Make a cell with `X', `Y' coordinates."
  (let ((table (make-hash-table :size 6)))
    (progn
      (puthash :x x table)
      (puthash :y y table)
      (puthash :north (list x (+ y 1)) table)
      (puthash :east (list (+ x 1) y) table)
      (puthash :south (list x (- y 1)) table)
      (puthash :west (list (- x 1) y) table)
      table)))

;; find a better way to filter nil neighbors
(defun emaze-cell-neighbors (cell grid)
  "Return the list of neigbhors of CELL in the GRID."
  (-filter (lambda (x) (not (equal x nil)))
    (-map (lambda (c) (emaze-get-cell (car c) (cadr c) grid)) ;; find a way to destrure the (x y)
        (ht-values (ht-select-keys cell '(:north :east :south :west))))))


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
