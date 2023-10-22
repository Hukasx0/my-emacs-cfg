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
    eglot
    company
    flycheck))

(mapc #'ensure-package-installed my-packages)

(add-hook 'go-mode-hook 'eglot-ensure)
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'rust-mode-hook 'eglot-ensure)
(add-hook 'rust-mode-hook 'company-mode)
(add-hook 'rust-mode-hook 'flycheck-mode)
(add-hook 'js-mode-hook 'eglot-ensure)
(add-hook 'js-mode-hook 'company-mode)
(add-hook 'js-mode-hook 'flycheck-mode)
(add-hook 'typescript-mode-hook 'eglot-ensure)
(add-hook 'typescript-mode-hook 'company-mode)
(add-hook 'typescript-mode-hook 'flycheck-mode)
