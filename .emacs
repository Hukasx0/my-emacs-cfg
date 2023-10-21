(setq inhibit-startup-screen t)

(menu-bar-mode 0)
(tool-bar-mode 0)

(load-file "themes/tokyo-theme.el")
(load-theme 'tokyo t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defun ensure-package-installed (package)
  (unless (package-installed-p package)
    (package-install package)))

(defvar my-packages
  '(typescript-mode
    rust-mode
    go-mode
    haskell-mode
    eglot))

(add-hook 'go-mode-hook 'eglot-ensure)
(add-hook 'rust-mode-hook 'eglot-ensure)
(add-hook 'js-mode-hook 'eglot-ensure)
(add-hook 'typescript-mode-hook 'eglot-ensure)

;; M-x package-install RET company RET
;; (add-hook 'after-init-hook 'global-company-mode)
