;;; init-nix.el --- Support for the Nix package manager -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
<<<<<<< HEAD
=======

(maybe-require-package 'nix-mode)
(maybe-require-package 'nix-sandbox)
(maybe-require-package 'nix-buffer)
>>>>>>> 8e1853cf37e70567e9132a56ea5999d935975d3a

(when (maybe-require-package 'nix-mode)
  (maybe-require-package 'nixpkgs-fmt)
  (maybe-require-package 'nix-sandbox)
  (maybe-require-package 'nix-buffer)

<<<<<<< HEAD
  (when (maybe-require-package 'nixos-options)
    (when (maybe-require-package 'company-nixos-options)
      (with-eval-after-load 'company
=======
      ;; Patch pending https://github.com/travisbhartwell/nix-emacs/pull/46
      (after-load 'company-nixos-options
        (defun company-nixos--in-nix-context-p ()
          (or (derived-mode-p 'nix-mode 'nix-repl-mode)
              (let ((file-name (buffer-file-name (current-buffer))))
                (and file-name (equal "nix" (file-name-extension file-name)))))))
>>>>>>> 8e1853cf37e70567e9132a56ea5999d935975d3a

        ;; Patch pending https://github.com/travisbhartwell/nix-emacs/pull/46
        (with-eval-after-load 'company-nixos-options
          (defun company-nixos--in-nix-context-p ()
            (unless (executable-find "nix-build")
              (or (derived-mode-p 'nix-mode 'nix-repl-mode)
                  (let ((file-name (buffer-file-name (current-buffer))))
                    (and file-name (equal "nix" (file-name-extension file-name))))))))

        (add-to-list 'company-backends 'company-nixos-options)))))


(provide 'init-nix)
;;; init-nix.el ends here
