(use-package lsp-sourcekit
  :after lsp-mode
  :config
  (setq lsp-sourcekit-executable "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp"))
(use-package swift-mode
  :hook (swift-mode . (lambda () (lsp))))
(eval-after-load 'flycheck '(flycheck-swift-setup))
(provide 'init-swift)
