(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;;----------------- theme selection ------------;;
;;(require 'birds-of-paradise-plus-theme)
;;(load-theme 'birds-of-paradise-plus t)
;;(load-theme 'adwaita t)
;;(load-theme 'tomorrow-night-eighties t)
;;(load-theme 'solarized-light t)
;;(load-theme 'zenburn t)
;;(load-theme 'tango-plus t)
;;(load-theme 'flatui t)
;;(load-theme 'solarized-dark t)

;;---------------- tex options --------------------;;
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;; no master document
(setq-default TeX-master nil)

;; spell checking
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; make it possible to show math equations
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

;; enable reftex features
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;; make linespacing bigger, make it easier to read
(add-hook 'LaTeX-mode-hook (lambda ()
			     (setq line-spacing 0.5)(TeX-PDF-mode)
			     ))

;; enable rextex plugin in auctex
(setq reftex-plug-into-AUCTeX t)

;; need to specify a path if running on mac
(setq ispell-program-name "/usr/local/bin/ispell")

;;make latex callable from mac
(getenv "PATH")
(setenv "PATH" (concat "/usr/texbin" ":" (getenv "PATH")))

;; spell checking enabled
(flyspell-mode t)

;;--------------- appearance ------------------;;
(column-number-mode t)

;; highlight the parentheses that match
(show-paren-mode t)

;; (ibuffer t)
(ido-mode t)

(recentf-mode t)

;; show line number in status bar
(line-number-mode t)

(eldoc-mode t)

(visual-line-mode t)

;; remove the scroll sound
(setq ring-bell-function #'ignore)

;; save used commands, paths, etc.
(desktop-save-mode 1)

;; don't show the toolbar
(tool-bar-mode 0)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;;----------------- backup ----------------------;;
;; don't create backup files(never had to actually use one of these)
(setq make-backup-files nil)

;;----------------- fonts -----------------------;; 
;; small
;;(set-face-attribute 'default nil :family "Monaco" :height 110)

;;large
(set-face-attribute 'default nil :family "Monaco" :height 140)

;; --------------- c-mode -----------------------;;

;; c-mode defaults
(setq c-default-style "linux"
      c-basic-offset 4)

;; EOF
