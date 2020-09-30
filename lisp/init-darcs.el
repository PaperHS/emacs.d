;;; init-darcs.el --- Support for the Darcs DVCS -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

<<<<<<< HEAD
=======
(require-package 'darcsum)
>>>>>>> 8e1853cf37e70567e9132a56ea5999d935975d3a
(require-package 'vc-darcs)


;; TODO: include this in the vc-darcs ELPA package
(add-to-list 'vc-handled-backends 'DARCS)
(autoload 'vc-darcs-find-file-hook "vc-darcs")
(add-hook 'find-file-hooks 'vc-darcs-find-file-hook)

(setq darcsum-whatsnew-switches "-l")

(provide 'init-darcs)
;;; init-darcs.el ends here
