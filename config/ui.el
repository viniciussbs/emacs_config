;; Disable startup screen.
(setq inhibit-startup-screen t)

;; Disable toolbar.
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Disable scrolling.
(scroll-bar-mode -1)

;; Disable cursor blink.
(blink-cursor-mode -1)

;; Highlight the current line.
(global-hl-line-mode +1)

;; Show line numbers.
(global-linum-mode 1)

;; Highlight matched and mismatched parenthesis.
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Load Zenburn color theme.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;; Set Monaco as default font.
(set-default-font "Monaco-14")
