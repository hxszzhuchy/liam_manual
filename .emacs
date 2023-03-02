;; set HOME
(setenv "HOME" "/home/user016")
;;(setenv "PATH" "/home/harris")

;; set load-path
(setq load-path (cons "~/lisp" load-path))
(add-to-list 'load-path "/home/user016/site-lisp")

;; set username and company name
(setq user-full-name "Liam_Zhu")
(setq company-name "Transchip")

;; color theme
(require 'color-theme)
(color-theme-deep-blue)

;; show time and date
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; set font 
;;(custom-set-faces
;; '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 140 :width normal)))))
;;(set-default-font "Monospace-18")
;;(set-default-font "-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso10646-1")

;; my personal settings
(global-font-lock-mode 1) ;; highlight syntax keyword
(set-scroll-bar-mode 'right)
(setq inhibit-startup-message t)
(setq require-final-newline t)
(setq fram-title-format "%f")
(setq icon-title-format "%b")
(setq column-number-mode t)
;;;; highlight parentheses both left and right ;;;;
(show-paren-mode t)
(setq show-paren-style 'parentheses)

(add-hook 'text-mode-hook 'tunr-on-auto-fill)
(setq transient-mark-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq scroll-margin 3)
(setq scroll-conservatively 10000)

;; backup files
(setq verison-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 5)
(setq delete-old-versions t)
(setq backup-directory-alist '(("." . "~/backups")))
(setq backup-by-copying t)
(setq backup-by-copying-when-linked t)
(setq backup-by-copying-when-mismatch t)

;; instal tabbar
(require 'tabbar)
(tabbar-mode)
(global-set-key [C-shift-tab] 'tabbar-backward)
(global-set-key [C-tab] 'tabbar-forward)

;; instal folding
(require 'folding)
;; instal htmlize
(require 'htmlize)
;; instal hide-lines
(require 'hide-lines)
(global-set-key "\C-cr" 'hide-lines)
;; instal linum
(require 'linum)
(global-linum-mode 1)

;; insert function
(defun insert-date ()
  "Insert date from the system"
  (interactive)
  (insert (format-time-string "%H:%M %Y/%m/%d"))
)
(global-set-key "\C-cd" 'insert-date)

(defun insert-buffer-name ()
  "Insert current buffer name"
  (interactive)
  (insert (buffer-name))
)
(global-set-key "\C-cb" 'insert-buffer-name)

;; instal some new functions
(require 'wlb-comment)
(require 'wlb-move-edit)
(require 'glp-verilog)

;; (add-to-list 'load-path "d:/Emacs_Home/emacs-24.3/.emacs.d")
;; (require 'auto-complete-config)
;; (ac-config-default)

;; 2016/09/22
(setq-default 
  indent-tabs-mode nil
  tab-stop-list (number-sequence 4 200 4)
  tab-width 4
  indent-line-function 'insert-tab
  ) ;;use space instead of table

;; 2016-10-21
(tool-bar-mode 0)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#102e4e" :foreground "#eeeeee" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
