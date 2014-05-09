(message "- packages configurations...")

(require 'package)
(add-to-list 'package-archives
						 '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
						 '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Use Package before Emacs initialization.
(setq package-enable-at-startup nil)
(package-initialize)

;; Emmet mode (aka Zen Coding)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.
(define-key emmet-mode-keymap (kbd "C-j") nil) ;; C-RET is enough

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c m l l") 'mc/edit-lines)
(global-set-key (kbd "C-c m l b") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-c m l e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-c m a a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c m a r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-c m e") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "C-c m t") 'mc/mark-sgml-tag-pair)
(global-set-key (kbd "C-c m SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-{") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-}") 'mc/skip-to-previous-like-this)

;; SCSS mode
(require 'scss-mode)
(setq scss-compile-at-save nil)
(setq css-indent-offset 2)

;; YAML mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; flymake-ruby for on the fly syntax checking
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; inf-ruby provides a REPL buffer connected to a Ruby subprocess
(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

;; Projectile is a project interaction library for Emacs
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(projectile-global-mode)

;; Lorem Ipsum mode
(require 'lorem-ipsum)
