(message "- UI configurations...")

;; Nord Theme
(unless (package-installed-p 'nord-theme) (package-install 'nord-theme))

;; Load color theme.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'carbon-dark t)

;; Set default font.
(set-frame-font "Source Code Pro-20")

;; Enable Powerline.
;; TODO: take a look at https://github.com/dbordak/telephone-line
(require 'powerline)
(powerline-default-theme)
(setq ns-use-srgb-colorspace t)
(setq powerline-image-apple-rgb t)

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

;; Show current column number
(column-number-mode)

;; Show line numbers with an empty space after each number.
(global-linum-mode 0)
(setq linum-format " %d")

;; Use parts of the filename to make buffer names distinguishable (instead of using `<2>`, `<3>` etc).
(require 'uniquify)
(setq
  uniquify-buffer-name-style 'post-forward
  uniquify-separator ":")

;; Enable display time.
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)

;; Enable syntax highlighting for older Emacsen that have it off.
(global-font-lock-mode t)

;; Hide leading stars on org-mode.
(setq org-hide-leading-stars t)
