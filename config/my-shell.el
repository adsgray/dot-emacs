
(require 'eshell)
(defalias 'vi "find-file $1") ;; lol
(defalias 'fg "previous-buffer")

;alias javagrep='find .-type f  -name \*java|xargs grep -ni '
;alias phpgrep='find . -type f -name \*php|xargs grep -ni '
;alias jsgrep='find . -type f -name \*js|xargs grep -ni '
;alias htmlgrep='find . -type f -name \*html|xargs grep -ni '
;alias cssgrep='find . -type f -name \*css|xargs grep -ni '
;alias lessgrep='find . -type f -name \*less|xargs grep -ni'
;alias scalagrep='find . -type f -name \*scala|xargs grep -ni '
;alias sqlfind='find resources/sql -type f -iname \*\.js  -mtime -5d -ls -or -iname \*\.sql -mtime -5d -ls |grep -vi \.svn'


(let ((SBT_OPTS (concat
		"-Xms512M -Xmx1536M -Xss512M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=384M "
		"-Dfile.encoding=UTF-8 "
		"-Djava.library.path=/usr/local/lib" ;; for zmq
		)))
  (setenv "SBT_OPTS" SBT_OPTS)
  )


(setenv "JAVA_TOOL_OPTIONS" "-Dfile.encoding=UTF8")

(setenv "HOME" "/Users/andrew.gray")
(setenv "GOPATH" (concat (getenv "HOME") "/" "gocode"))
(setenv "GOBIN" (concat (getenv "GOPATH") "/" "bin"))

(setenv "ANSIBLE_TRANSPORT" "ssh")
(setenv "ANSIBLE_SSH_ARGS" "-o ControlMaster=auto -o ControlPersist=60s -o ControlPath=/tmp/ansible-ssh-%h-%p-%r")

;; exec-path stuff
(exec-path-from-shell-initialize)

;; eshell specific
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "C-, r")  'helm-eshell-history)))

;; homebrew
;export HOMEBREW_PREFIX="/usr/local"
;export HOMEBREW_REPOSITORY="/usr/local"
;export HOMEBREW_LIBRARY="/usr/local"
;export HOMEBREW_CELLAR="/usr/local/Cellar"

(defun start-shells ()
  "Start the shells I always start."
  (interactive)
  (eshell "*eshell-emacsd")
  (eshell "*eshell-journal")
  (eshell "*eshell-dashboard")
  )

;; for completions list in shell
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq-local pcomplete-cycle-completions nil)))

(provide 'my-shell)
