(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(dumb-jump-mode t)
 '(helm-mode t)
 '(package-selected-packages
   (quote
    (evil-leader ssh elisp-slime-nav darkokai-theme pacmacs sauron avy-flycheck evil dumb-jump helm-company volatile-highlights wrap-region js2-mode expand-region tea-time auto-highlight-symbol rainbow-delimiters ace-window use-package rainbow-mode flycheck helm-swoop w3m groovy-mode magit nyan-mode helm-projectile projectile helm php-mode git company-go company exec-path-from-shell go-autocomplete whitespace-cleanup-mode ## jabber w3 yaml-mode scala-mode go-mode markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("org"       . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu"       . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa"     . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar config-dir (expand-file-name "config" user-emacs-directory))
(add-to-list 'load-path config-dir)

;; my configs
(require 'my-backups)
(require 'my-elisp)
(require 'my-vi)
(require 'my-theme)
(require 'my-helm)
(require 'my-hooks)
(require 'my-shell)
(require 'my-eww)
(require 'my-prog)
(require 'my-org)
(require 'my-calendar)
(require 'my-misc)

;; other
(require 'tea-time)
(require 'dired-x)

(provide '.emacs)
;;; .emacs ends here
