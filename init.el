(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(auto-image-file-mode t)
 '(dumb-jump-mode t)
 '(elfeed-feeds nil)
 '(elfeed-search-title-max-width 80)
 '(evil-buffer-regexps (quote (("^ \\*load\\*"))))
 '(evil-emacs-state-modes
   (quote
    (eww-mode elfeed-show-mode elfeed-search-mode archive-mode bbdb-mode biblio-selection-mode bookmark-bmenu-mode bookmark-edit-annotation-mode browse-kill-ring-mode bzr-annotate-mode calc-mode cfw:calendar-mode completion-list-mode Custom-mode debugger-mode delicious-search-mode desktop-menu-blist-mode desktop-menu-mode doc-view-mode dvc-bookmarks-mode dvc-diff-mode dvc-info-buffer-mode dvc-log-buffer-mode dvc-revlist-mode dvc-revlog-mode dvc-status-mode dvc-tips-mode ediff-mode ediff-meta-mode efs-mode Electric-buffer-menu-mode emms-browser-mode emms-mark-mode emms-metaplaylist-mode emms-playlist-mode ess-help-mode etags-select-mode fj-mode gc-issues-mode gdb-breakpoints-mode gdb-disassembly-mode gdb-frames-mode gdb-locals-mode gdb-memory-mode gdb-registers-mode gdb-threads-mode gist-list-mode git-commit-mode git-rebase-mode gnus-article-mode gnus-browse-mode gnus-group-mode gnus-server-mode gnus-summary-mode google-maps-static-mode ibuffer-mode jde-javadoc-checker-report-mode magit-cherry-mode magit-diff-mode magit-log-mode magit-log-select-mode magit-popup-mode magit-popup-sequence-mode magit-process-mode magit-reflog-mode magit-refs-mode magit-revision-mode magit-stash-mode magit-stashes-mode magit-status-mode magit-mode magit-branch-manager-mode magit-commit-mode magit-key-mode magit-rebase-mode magit-wazzup-mode mh-folder-mode monky-mode mu4e-main-mode mu4e-headers-mode mu4e-view-mode notmuch-hello-mode notmuch-search-mode notmuch-show-mode occur-mode org-agenda-mode package-menu-mode pdf-outline-buffer-mode pdf-view-mode proced-mode rcirc-mode rebase-mode recentf-dialog-mode reftex-select-bib-mode reftex-select-label-mode reftex-toc-mode sldb-mode slime-inspector-mode slime-thread-control-mode slime-xref-mode sr-buttons-mode sr-mode sr-tree-mode sr-virtual-mode tar-mode tetris-mode tla-annotate-mode tla-archive-list-mode tla-bconfig-mode tla-bookmarks-mode tla-branch-list-mode tla-browse-mode tla-category-list-mode tla-changelog-mode tla-follow-symlinks-mode tla-inventory-file-mode tla-inventory-mode tla-lint-mode tla-logs-mode tla-revision-list-mode tla-revlog-mode tla-tree-lint-mode tla-version-list-mode twittering-mode urlview-mode vc-annotate-mode vc-dir-mode vc-git-log-view-mode vc-hg-log-view-mode vc-svn-log-view-mode vm-mode vm-summary-mode w3m-mode wab-compilation-mode xgit-annotate-mode xgit-changelog-mode xgit-diff-mode xgit-revlog-mode xhg-annotate-mode xhg-log-mode xhg-mode xhg-mq-mode xhg-mq-sub-mode xhg-status-extra-mode)))
 '(helm-mode t)
 '(package-selected-packages
   (quote
    (wgrep-helm dired+ wgrep company-php go-complete neotree golden-ratio twittering-mode elfeed-org elfeed evil-leader ssh elisp-slime-nav darkokai-theme pacmacs sauron avy-flycheck evil dumb-jump helm-company volatile-highlights wrap-region js2-mode expand-region tea-time auto-highlight-symbol rainbow-delimiters ace-window use-package rainbow-mode flycheck helm-swoop w3m groovy-mode magit nyan-mode helm-projectile projectile helm php-mode git company-go company exec-path-from-shell go-autocomplete whitespace-cleanup-mode ## jabber w3 yaml-mode scala-mode go-mode markdown-mode))))
    (docker svg paredit pdf-tools wttrin weather forecast slack ace-jump-mode ack wgrep-helm dired+ wgrep company-php go-complete neotree golden-ratio twittering-mode elfeed-org elfeed ssh elisp-slime-nav darkokai-theme pacmacs sauron avy-flycheck evil dumb-jump helm-company volatile-highlights wrap-region js2-mode expand-region tea-time auto-highlight-symbol rainbow-delimiters ace-window use-package rainbow-mode flycheck helm-swoop w3m groovy-mode magit nyan-mode helm-projectile projectile helm php-mode git company-go company exec-path-from-shell go-autocomplete whitespace-cleanup-mode ## jabber w3 yaml-mode scala-mode go-mode markdown-mode)))
 '(shr-blocked-images ".*svg$")
 '(shr-image-animate t)
 '(shr-use-fonts nil)
 '(shr-width 75))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 '(elfeed-search-title-face ((t (:foreground "dodger blue")))))

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
