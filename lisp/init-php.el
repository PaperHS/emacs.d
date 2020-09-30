;;; init-php.el --- Support for working with PHP -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when (maybe-require-package 'php-mode)
  (maybe-require-package 'smarty-mode)

  (when (maybe-require-package 'company-php)
<<<<<<< HEAD
    (with-eval-after-load 'company
      (add-to-list 'company-backends 'company-ac-php-backend))))
=======
    (after-load 'company
      (push 'company-ac-php-backend company-backends))))
>>>>>>> 8e1853cf37e70567e9132a56ea5999d935975d3a

(provide 'init-php)
;;; init-php.el ends here
