;; Load Zenburn color theme.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

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

;; Show line numbers with an empty space after each number.
(global-linum-mode 1)
(setq linum-format "%d ")

;; Highlight matched and mismatched parenthesis.
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Set Monaco as default font.
(set-default-font "Monaco-14")

;; Use parts of the filename to make buffer names distinguishable (instead of using `<2>`, `<3>` etc).
(require 'uniquify)
(setq
  uniquify-buffer-name-style 'post-forward
  uniquify-separator ":")

;; Enable display time
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)
