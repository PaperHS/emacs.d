;;; init-elm.el --- Support for the Elm language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'elm-mode)
<<<<<<< HEAD
  (with-eval-after-load 'elm-mode
    (diminish 'elm-indent-mode)
    (with-eval-after-load 'company
      (add-to-list 'company-backends 'company-elm))
=======
  (after-load 'elm-mode
    (diminish 'elm-indent-mode)
    (after-load 'company
      (push 'company-elm company-backends))
>>>>>>> 8e1853cf37e70567e9132a56ea5999d935975d3a
    (when (executable-find "elm-format")
      (setq-default elm-format-on-save t)))
  (maybe-require-package 'elm-test-runner)
  (when (maybe-require-package 'flycheck-elm)
    (with-eval-after-load 'elm-mode
      (flycheck-elm-setup)))
  (when (maybe-require-package 'add-node-modules-path)
    (add-hook 'elm-mode-hook 'add-node-modules-path)))

(provide 'init-elm)
;;; init-elm.el ends here
