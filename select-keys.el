;;; select-keys.el --- select keys for a hast-table
;;
;;; package:
;;
;;; Commentary:
;;
;; clojure-like 'select-keys'
;;
;; (select-keys table (list :name :age))
;;
;;   - return a new hash-table with the selected keys
;;   - empty if the list is empty
;;   - if the key does not exist, do not put nil
;;
;;; Code:


(require 'ht)

(setq table (make-hash-table))
(puthash :name "john" table)
(puthash :id 4234 table)
(puthash :age 31 table)
(puthash :sex 'M table)

table

(defun select-keys (table keys)
  "From hash-table `TABLE', select specific `KEYS'."
  (let (result)
    (setq result (make-hash-table))
    (dolist (key keys result)
      (puthash key (gethash key table) result))))


(select-keys table '(:name :age))



;;; select-keys.el ends here
