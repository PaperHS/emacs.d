;;; init-folding.el --- Support code and region folding -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'origami)
<<<<<<< HEAD
  (with-eval-after-load 'origami
=======
  (after-load 'origami
>>>>>>> 8e1853cf37e70567e9132a56ea5999d935975d3a
    (define-key origami-mode-map (kbd "C-c f") 'origami-recursively-toggle-node)
    (define-key origami-mode-map (kbd "C-c F") 'origami-toggle-all-nodes)))


(provide 'init-folding)
;;; init-folding.el ends here
