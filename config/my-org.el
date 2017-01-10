  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)
  (global-set-key "\C-cc" 'org-capture)
  (global-set-key "\C-cb" 'org-iswitchb)

;; "In order to include entries from the Emacs diary into Org mode's agenda, you only need to customize the variable"
;; http://orgmode.org/manual/Weekly_002fdaily-agenda.html
(setq org-agenda-include-diary t)
(setq org-directory "/Users/andrew/notes/journal")

;; for org-capture
(setq org-default-notes-file (concat org-directory "/notes.org"))

;; if this is true, the markdown export will have a bunch of HTML crap in it.
(setq org-export-with-toc nil)
(setq org-list-allow-alphabetical t)

(setq org-goto-interface 'outline-path-completion
      org-goto-max-level 10)


;; http://sachachua.com/blog/2015/02/learn-take-notes-efficiently-org-mode/
(setq org-refile-targets '((org-agenda-files . (:maxlevel . 6))))
(global-set-key (kbd "C-c o")
                (lambda () (interactive) (find-file "~/notes/journal/current.org")))
(global-set-key (kbd "C-c w")
                (lambda () (interactive) (find-file "~/notes/journal/work.org")))

;; http://doc.norang.ca/org-mode.html

(defun my-org-mode ()
  "Code to run after entering 'org-mode'."
  (auto-fill-mode))

;; could just use 'turn-on-auto-fill but I might want to add more later?
(add-hook 'org-mode-hook 'my-org-mode)

(provide 'my-org)
