;;; Example.el -*- lexical-binding: t -*-
;;
;;; Code:


(add-to-list 'load-path ".")

(require 'emaze)

(pp (emaze-make-grid 5 5))

(setq grid (emaze-make-grid 5 5))
(setq cell (emaze-make-cell 1 2))


(ht-items (emaze-get-cell 1 4 grid))

(emaze-cell-neighbors cell grid)
(-map (lambda (x) (ht-items x)) (emaze-cell-neighbors cell grid))


;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; example.el ends here
