;; This still needs a lot of configuring - see http://tuhdo.github.io/helm-intro.html

(require 'helm)
(require 'helm-config)
(require 'helm-eshell)
(require 'helm-files)
(require 'helm-grep)
(require 'helm-adaptive)

;; WJH 31 Jul 2014 - Use the mouse to select candidates in the helm buffer
;; Based on this github issue: https://github.com/emacs-helm/helm/issues/501
(defun helm-mouse-1-exit-minibuffer (click)
  (interactive "e")
  (mouse-set-point click)
  (helm-mark-current-line)
  (helm-exit-minibuffer))
(define-key helm-map (kbd "<mouse-1>") 'helm-mouse-1-exit-minibuffer)

;; WJH 31 Jul 2014: Unfortunately, defadvice did not work
;; 
;; (defadvice helm-insert-match (after helm-mouse-highlight activate)
;;   "Highlight selection when it is moused over"
;;   (let ((start     (point-at-bol (point))))
;;     (put-text-property start (point-at-eol) 'mouse-face 'highlight)))

;; So I directly patch this function to achieve mouseover highlighting
(defun helm-insert-match (match insert-function source &optional num)
  "Insert MATCH into `helm-buffer' with INSERT-FUNCTION for SOURCE.
If MATCH is a list then insert the string intended to appear on the display
and store the real value in a text property."
  (let ((start     (point-at-bol (point)))
        (dispvalue (or (car-safe match) match))
        (realvalue (cdr-safe match)))
    (setq dispvalue
          (cond ((symbolp dispvalue) (symbol-name dispvalue))
                ((numberp dispvalue) (number-to-string dispvalue))
                ((string= "" dispvalue))
                (t dispvalue)))
    (when (stringp dispvalue)
      (funcall insert-function dispvalue)
      ;; Some sources with candidates-in-buffer have already added
      ;; 'helm-realvalue property when creating candidate buffer.
      (unless (get-text-property start 'helm-realvalue)
        (and realvalue
             (put-text-property start (point-at-eol)
                                'helm-realvalue realvalue)))
      (when num
        (put-text-property start (point-at-eol) 'helm-cand-num num))
      (when helm-source-in-each-line-flag
        (put-text-property start (point-at-eol) 'helm-source source))
      ;; Next line is my addition WJH 31 Jul 2014
      (put-text-property start (point-at-eol) 'mouse-face 'highlight)
      (funcall insert-function "\n"))))



; rebind tab to do persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) 
; make TAB works in terminal
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) 
; list actions using C-z
(define-key helm-map (kbd "C-z")  'helm-select-action) 

(define-key helm-grep-mode-map (kbd "<return>")  'helm-grep-mode-jump-other-window)
(define-key helm-grep-mode-map (kbd "n")  'helm-grep-mode-jump-other-window-forward)
(define-key helm-grep-mode-map (kbd "p")  'helm-grep-mode-jump-other-window-backward)

(setq
 helm-google-suggest-use-curl-p t
 helm-truncate-lines t
 helm-scroll-amount 4 ; scroll 4 lines other window using
		      ; M-<next>/M-<prior>
 helm-quick-update t ; do not display invisible candidates
 helm-idle-delay 0.01 ; be idle for this many seconds, before updating
		      ; in delayed sources.
 helm-input-idle-delay 0.01 ; be idle for this many seconds, before
			    ; updating candidate buffer
 helm-ff-search-library-in-sexp t ; search for library in `require'
				  ; and `declare-function' sexp.
 helm-split-window-default-side 'other ;; open helm buffer in another
				       ;; window
 helm-split-window-in-side-p t ;; open helm buffer inside current
			       ;; window, not occupy whole other
			       ;; window
 helm-buffers-favorite-modes (append helm-buffers-favorite-modes
                                     '(picture-mode artist-mode))
 helm-candidate-number-limit 200 ; limit the number of displayed canidates
 helm-M-x-requires-pattern 0     ; show all candidates when set to 0
 helm-boring-file-regexp-list
 '("\\.git$" "\\.hg$" "\\.svn$" "\\.CVS$"
   "\\._darcs$" "\\.la$" "\\.o$" "\\.i$" "\\~$") ; do not show these files in helm buffer
 helm-ff-file-name-history-use-recentf t
 helm-move-to-line-cycle-in-source t ; move to end or beginning of source
                                        ; when reaching top or bottom of source.
 ido-use-virtual-buffers t      ; Needed in helm-buffers-list
 helm-buffers-fuzzy-matching t          ; fuzzy matching buffer names when non--nil
                                        ; useful in helm-mini that lists buffers
 )

(define-key helm-map (kbd "C-x 2") 'helm-select-2nd-action)
(define-key helm-map (kbd "C-x 3") 'helm-select-3rd-action)
(define-key helm-map (kbd "C-x 4") 'helm-select-4rd-action)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-.") 'helm-mini)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c h s") 'helm-semantic-or-imenu)
(global-set-key (kbd "C-c h m") 'helm-man-woman)
(global-set-key (kbd "C-c h f") 'helm-find)
(global-set-key (kbd "C-c h l") 'helm-locate)
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-c h r") 'helm-resume)
(global-set-key (kbd "C-c m") 'helm-all-mark-rings)

(define-key 'help-command (kbd "C-f") 'helm-apropos)
(define-key 'help-command (kbd "r") 'helm-info-emacs)

;; use helm to list eshell history
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "M-l")  'helm-eshell-history)))

  ;;; Save current position to mark ring
(add-hook 'helm-goto-line-before-hook 'helm-save-current-pos-to-mark-ring)

;; helm-bibtex installed from melpa
(autoload 'helm-bibtex "helm-bibtex" "" t)
(setq helm-bibtex-bibliography "/Users/will/Dropbox/OSX/texmf/bibtex/bib/BibdeskLibrary-slavoj.bib")
(setq helm-bibtex-pdf-open-function
      (lambda (fpath) (shell-command-to-string
                       (concat "open " fpath))))
(setq helm-bibtex-library-path "/Users/will/Dropbox/Documents/Papers/")
(global-set-key (kbd "C-c h b") 'helm-bibtex)

;; helm-dash installed from melpa
;; (setq helm-dash-docsets-path "/Users/will/Library/Application Support/Dash/DocSets")
(setq helm-dash-docsets-path "/Users/will/.docsets")
(setq helm-dash-browser-func 'w3m-browse-url)
(setq dash-common-docsets '("Bash" "C" "C++" "LaTeX" "Python_3" "SciPy" "NumPy" "HTML" "SVG" "JavaScript"))
(global-set-key (kbd "C-c h d") 'helm-dash)

(helm-mode 1)
(helm-adaptive-mode 1)
