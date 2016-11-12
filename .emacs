
;; added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (molokai-theme sublime-themes monokai-theme auto-complete py-autopep8 pony-mode py-import-check py-isort web-mode flylisp js2-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/packages/")


(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(set-face-attribute 'web-mode-html-tag-face nil :foreground "Orange")

(ac-config-default)

(global-linum-mode 1)
(set-language-environment "UTF-8")

(add-hook 'c-mode-hook (lambda ()
			 (setq-default font-lock-global-modes nil)
			 (setq-default line-number-mode nil)
			 (setq-default tab-width 4)
			 (setq-default indent-tabs-mode t)
			 (setq-default c-backspace-function 'backward-delete-char)
			 (setq-default c-basic-offset 4)
			 (setq-default c-default-style "linux")
			 (setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
							 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
			 ))

(load-theme 'darkokai t)
