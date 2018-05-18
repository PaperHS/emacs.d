;; Call Gofmt before saving
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;;autocomplete
(set (make-local-variable 'company-backends) '(company-go))
(company-mode)

;; Godef jump key binding
(local-set-key (kbd "M-,") 'godef-jump)
(local-set-key (kbd "M-.") 'pop-tag-mark)
(provide 'init-go)
