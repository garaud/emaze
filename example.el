;;; Example.el
;;
;;
;;; Code:


(add-to-list 'load-path ".")

(require 'emaze)

(pp (emaze-make-grid 5 5))

(setq grid (emaze-make-grid 5 5))

(ht-items (emaze-get-cell 1 4 grid))


;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; example.el ends here
