(require 'f)

(defvar emaze-test/test-path
  (f-parent (f-this-file)))

(defvar emaze-test/root-path
  (f-parent emaze-test/test-path))

(require 'ert)
(require 'emaze (f-expand "emaze" emaze-test/root-path))
