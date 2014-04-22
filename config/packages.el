(message "- packages configurations...")

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Emmet mode (aka Zen Coding)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.
(define-key emmet-mode-keymap (kbd "C-j") nil) ;; C-RET is enough

;; iy-go-to-char
(require 'iy-go-to-char)
(global-set-key (kbd "C-c s") 'iy-go-to-char)
(global-set-key (kbd "C-c r") 'iy-go-to-char-backward)
(global-set-key (kbd "C-c C-s") 'iy-go-to-or-up-to-continue)
(global-set-key (kbd "C-c C-r") 'iy-go-to-or-up-to-continue-backward)

;; SCSS mode
(require 'scss-mode)
(setq scss-compile-at-save nil)
(setq css-indent-offset 2)

;; Lorem Ipsum mode
(require 'lorem-ipsum)
