;;; init-rust.el --- Support for the Rust language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; (when (maybe-require-package 'rust-mode)
;;   (when (maybe-require-package 'racer)
;;     (add-hook 'rust-mode-hook #'racer-mode))
;;   (when (maybe-require-package 'company)
;;     (add-hook 'racer-mode-hook #'company-mode)))

;; (when (maybe-require-package 'flycheck-rust)
;;   (after-load 'rust-mode
;;     (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(use-package flycheck
  :hook (prog-mode . flycheck-mode))

(use-package company
  :hook (prog-mode . company-mode)
  :config (setq company-tooltip-align-annotations t)
  (setq company-minimum-prefix-length 1))

(use-package lsp-mode
  :hook (rust-mode . lsp)
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)





(use-package toml-mode)

(use-package rust-mode
  :hook (rust-mode . lsp))

;; ;; Add keybindings for interacting with Cargo
;; (use-package cargo
;;   :hook (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :config (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))



(provide 'init-rust)
;;; init-rust.el ends here
