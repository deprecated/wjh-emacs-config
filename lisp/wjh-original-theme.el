(deftheme wjh-original
  "Created 2011-11-04.")

(custom-theme-set-variables
 'wjh-original
 '(all-christian-calendar-holidays t)
 '(TeX-command-list (quote (("TeX" "%(PDF)%(tex) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (plain-tex-mode texinfo-mode ams-tex-mode) :help "Run plain TeX") ("LaTeX" "%`%l --jobname=%s %(mode)%' %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX") ("Makeinfo" "makeinfo %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with Info output") ("Makeinfo HTML" "makeinfo --html %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with HTML output") ("AmSTeX" "%(PDF)amstex %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (ams-tex-mode) :help "Run AMSTeX") ("ConTeXt" "texexec --once --texutil %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt once") ("ConTeXt Full" "texexec %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt until completion") ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX") ("View" "%V" TeX-run-discard-or-function nil t :help "Run Viewer") ("Print" "%p" TeX-run-command t t :help "Print the file") ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command) ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file") ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file") ("Check" "lacheck %s" TeX-run-compile nil (latex-mode) :help "Check LaTeX file for correctness") ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document") ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files") ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files") ("Other" "" TeX-run-command t t :help "Run an arbitrary command") ("Jump to PDF" "%V" TeX-run-discard-or-function nil t :help "Run Viewer"))))
 '(TeX-fold-macro-spec-list (quote (("Å" ("AA")) ("]" (")")) ("[" ("(")) ("[f]" ("footnote" "marginpar")) ("[c]" ("cite" "citet" "citep" "citealp" "citealt")) ("[l]" ("label")) ("[r]" ("ref" "pageref" "eqref")) ("[i]" ("index" "glossary")) ("*" ("item")) ("..." ("dots")) ("(C)" ("copyright")) ("(R)" ("textregistered")) ("TM" ("texttrademark")) (1 ("part" "chapter" "section" "subsection" "subsubsection" "paragraph" "subparagraph" "part*" "chapter*" "section*" "subsection*" "subsubsection*" "paragraph*" "subparagraph*" "emph" "textit" "textsl" "textmd" "textrm" "textsf" "texttt" "textbf" "textsc" "textup" "mathrm")))))
 '(TeX-fold-math-spec-list (quote ((1 ("mathrm")))))
 '(TeX-fold-type-list (quote (env macro math)))
 '(aquamacs-customization-version-id 300)
 '(aquamacs-tool-bar-user-customization nil)
 '(blink-matching-paren t)
 '(browse-url-browser-function (quote browse-url-default-macosx-browser))
 '(calendar-christian-all-holidays-flag t)
 '(completion-ignored-extensions (quote (".svn/" "CVS/" ".o" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".dvi" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".fasl" ".ufsl" ".fsl" ".dxl" ".pfsl" ".dfsl" ".lo" ".la" ".gmo" ".mo" ".toc" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyo" ".log" ".nav" ".snm")))
 '(custom-raised-buttons t)
 '(debug-on-quit t)
 '(default-frame-alist (quote ((active-alpha . 0.9) (inactive-alpha . 0.8) (alpha 100 100) (active-alpha . 0.9) (inactive-alpha . 0.8) (cursor-type . box) (vertical-scroll-bars) (fringe) (modeline . t) (mouse-color . "black") (cursor-color . "Red") (background-mode . light) (tool-bar-lines . 0) (menu-bar-lines . 1) (background-color . "White") (foreground-color . "Black") (font . "-apple-Monaco-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1") (fontsize . 0) (font-backend ns))))
 '(default-input-method "spanish-prefix")
 '(gnus-select-method (quote (nntp "news.gmane.org")))
 '(gnus-summary-line-format "%U%R%z%I%(%[%4L: %-23,23f%]%) %d %s
")
 '(indicate-buffer-boundaries (quote ((top . left) (bottom . right))))
 '(line-spacing 2)
 '(mac-inline-input-method-mode nil)
 '(mail-host-address "crya.unam.mx")
 '(make-backup-files t)
 '(ns-tool-bar-display-mode (quote both))
 '(ns-tool-bar-size-mode (quote regular))
 '(org-agenda-files (quote ("~/Org/llobjects.org" "~/Work/Referee/Vitti/vitti-report.org" "~/Org/notes.org" "~/Dropbox/Org/radpress.org" "~/Org/visualization.org" "~/Org/coloquios.org" "~/Org/kanbalam.org" "~/Work/BobEON/EWHB/bob-hbeta.org" "~/Org/gargi.org" "~/Org/newhouse.org" "~/Org/mhd.org" "~/Org/mixing.org" "~/Org/posgrado.org" "~/Org/temarios/temarios.org" "~/Org/orion.org" "~/Org/proplyd.org" "~/Org/helix.org" "~/Org/revmex.org" "~/Org/TODO.org" "~/Org/garrelt-simulations.org" "~/Org/orgjournal.org" "~/Org/journalfigs.org")))
 '(org-disputed-keys (quote (([(control tab)] . [(control shift tab)]))))
 '(org-emphasis-alist (quote (("*" bold "<b>" "</b>") ("/" italic "<i>" "</i>") ("_" underline "<span style=\"text-decoration:underline;\">" "</span>") ("=" org-code "<code>" "</code>" verbatim) ("~" org-verbatim "<code>" "</code>" verbatim) ("@" org-warning "<b>" "</b>"))))
 '(org-enforce-todo-dependencies t)
 '(org-export-language-setup (quote (("en" "Author" "Date" "Table of Contents") ("cs" "Autor" "Datum" "Obsah") ("da" "Ophavsmand" "Dato" "Indhold") ("de" "Autor" "Datum" "Inhaltsverzeichnis") ("es" "Autor" "Fecha" "Índice") ("fr" "Auteur" "Date" "Table des Mati\350res") ("it" "Autore" "Data" "Indice") ("nl" "Auteur" "Datum" "Inhoudsopgave") ("nn" "Forfattar" "Dato" "Innhold") ("sv" "F\366rfattarens" "Datum" "Inneh\345ll"))))
 '(org-export-latex-packages-alist (quote (("" "siunitx" t))))
 '(org-log-into-drawer t)
 '(org-replace-disputed-keys t)
 '(preview-LaTeX-command (quote ("%`%l  --jobname=%s \"\\nonstopmode\\nofiles\\PassOptionsToPackage{" ("," . preview-required-option-list) "}{preview}\\AtBeginDocument{\\ifx\\ifPreview\\undefined" preview-default-preamble "\\fi}\"%' %t")))
 '(preview-image-type (quote dvipng))
 '(ps-font-size (quote (7 . 11.5)))
 '(ps-paper-type (quote letter))
 '(reftex-insert-label-flags (quote ("s" "sfte")))
 '(reftex-label-alist (quote (("deluxetable" 97 "tab:" nil caption nil))))
 '(require-final-newline (quote visit-save))
 '(safe-local-variable-values (quote ((org-export-babel-evaluate . t) (org-confirm-babel-evaluate) (org-export-babel-evaluate) (org-use-property-inheritance . t) (encoding . utf-8) (TeX-master . \.\./examples/beamerexample1\.tex) (org-export-publishing-directory . "tmp") (system-time-locale . "es_MX.ISO8859-1") (system-time-locale . "en_GB.ISO8859-1") (system-time-locale . "es_ES.ISO8859-1") (system-time-locale) (org-export-html-style . "<link rel=stylesheet
  href=\"temarios.css\"
  type=\"text/css\">
<meta HTTP-EQUIV=\"Refresh\" CONTENT=300>") (org-export-html-style . "<link rel=stylesheet
  href=\"temarios.css\"
  type=\"text/css\">") (TeX-master . "ms-cloudy") (life-universe-everything . 42) (symbolic-formulas ("Eastern area") ("West-district") ("North&South") ("Other")) (TeX-master . "hh528talk") (allout-layout * 0 :) (allout-layout * :) (TeX-master . t))))
 '(smart-frame-prior-positions nil)
 '(text-mode-hook (quote (smart-spacing-mode turn-on-word-wrap)))
 '(url-cookie-confirmation t)
 '(url-cookie-file "/Users/will/Library/Mozilla/Profiles/default/b150a4n2.slt/cookies.txt")
 '(url-cookie-trusted-urls (quote ("\\.arxiv\\.org")))
 '(visual-line-mode nil)
 '(tabbar-mode nil)
 '(size-indication-mode t)
 '(show-paren-mode nil)
 '(savehist-mode t)
 '(fringe-mode (quote (4 . 0)))
 '(blink-cursor-mode nil)
 '(one-buffer-one-frame-mode nil))

(custom-theme-set-faces
 'wjh-original
 '(latex-mode-default ((t (:inherit text-mode-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Lucida Grande"))))
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "apple" :family "Monaco"))))
 '(cua-global-mark ((((min-colors 88) (class color)) (:background "#ffffaa" :foreground "black"))))
 '(cua-rectangle ((default (:inherit region)) (((class color)) (:background "#ddeeff"))))
 '(custom-button ((nil (:background "#ebcccc"))))
 '(custom-button-mouse ((((type x w32 mac) (class color)) (:inherit custom-button-face :background "#ffe9d3" :foreground "black"))))
 '(echo-area ((t (:stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 120 :width normal :family "Menlo"))))
 '(emacs-wiki-header-1 ((t (:inherit nil :weight bold :height 1.15))))
 '(emacs-wiki-header-2 ((t (:inherit nil :weight bold :height 1.1))))
 '(emacs-wiki-header-3 ((t (:inherit nil :weight bold :height 1.05))))
 '(emacs-wiki-header-4 ((t (:inherit nil :weight bold :height 1.0))))
 '(emacs-wiki-header-5 ((t (:inherit italic :weight normal :height 1.0))))
 '(emacs-wiki-header-6 ((t (:inherit nil :weight normal :height 1.0))))
 '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face :height 1.05))))
 '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face :height 1.05))))
 '(font-latex-sectioning-2-face ((t (:inherit font-latex-sectioning-3-face :height 1.05))))
 '(font-latex-sectioning-3-face ((t (:inherit font-latex-sectioning-4-face :height 1.05))))
 '(font-latex-sectioning-4-face ((t (:inherit font-latex-sectioning-5-face :height 1.05))))
 '(font-latex-sectioning-5-face ((((class color) (background light)) (:inherit variable-pitch :foreground "IndianRed4" :weight bold))))
 '(font-latex-slide-title-face ((t (:inherit (variable-pitch font-latex-sectioning-5-face) :weight bold :height 1.2))))
 '(font-latex-string-face ((((class color) (background light)) (:inherit font-lock-string-face))))
 '(font-latex-warning-face ((((class color) (background light)) (:inherit bold :foreground "red3"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background light)) (:foreground "Orchid4"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "DarkSlateBlue"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background light)) (:foreground "CadetBlue4"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background light)) (:foreground "Blue4"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background light)) (:foreground "green4"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "OliveDrab4"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background light)) (:foreground "ForestGreen"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background light)) (:foreground "DarkGoldenrod4"))))
 '(font-lock-warning-face ((((class color) (min-colors 88) (background light)) (:foreground "orange3" :weight bold))))
 '(fringe ((((type ns)) (:background "grey90" :foreground "grey25"))))
 '(hl-line ((t (:inherit highlight :background "#DDEEDD"))))
 '(mode-line ((t (:background "#ddc4bf" :foreground "black" :box (:line-width 1 :color "DarkOrange4")))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey95" :foreground "grey40" :box (:line-width -1 :color "grey75") :weight light))))
 '(org-block ((t (:inherit (shadow fixed-pitch)))))
 '(org-block-background ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-column-title ((((class color) (min-colors 16) (background light)) (:background "grey90" :underline t :weight bold :family "monaco"))))
 '(org-date ((((class color) (background light)) (:foreground "Purple4" :underline t))))
 '(org-document-title ((((class color) (background light)) (:foreground "midnight blue" :weight bold))))
 '(org-level-5 ((t (:inherit outline-5 :foreground "#c06d1a"))))
 '(org-level-6 ((t (:inherit outline-6 :foreground "#317563"))))
 '(org-link ((((class color) (background light)) (:foreground "gray50" :underline t :weight bold))))
 '(org-table ((t (:inherit fixed-pitch :foreground "Blue4"))))
 '(org-todo ((t (:foreground "#b93030" :weight bold))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "#fed"))))
 '(sh-heredoc ((t (:foreground "tan4"))))
 '(sh-heredoc-face ((t (:foreground "tan4"))))
 '(widget-field ((((class grayscale color) (background light)) (:background "#b0f0a0"))))
 '(text-mode-default ((t (:inherit autoface-default))))
 '(special-mode-default ((t (:inherit autoface-default))))
 '(recentf-dialog-mode-default ((t (:inherit autoface-default))))
 '(prog-mode-default ((t (:inherit autoface-default))))
 '(python-mode-default ((t (:inherit prog-mode-default))))
 '(Info-mode-default ((t (:inherit autoface-default))))
 '(org-agenda-mode-default ((t (:inherit autoface-default))))
 '(sh-mode-default ((t (:inherit prog-mode-default))))
 '(dired-mode-default ((t (:inherit autoface-default))))
 '(fundamental-mode-default ((t (:inherit autoface-default))))
 '(emacs-lisp-mode-default ((t (:inherit prog-mode-default))))
 '(help-mode-default ((t (:inherit special-mode-default))))
 '(completion-list-mode-default ((t (:inherit autoface-default))))
 '(debugger-mode-default ((t (:inherit autoface-default))))
 '(minibuffer-inactive-mode-default ((t (:inherit autoface-default))))
 '(custom-theme-choose-mode-default ((t (:inherit special-mode-default))))
 '(custom-new-theme-mode-default ((t (:inherit autoface-default)))))

(provide-theme 'wjh-original)
