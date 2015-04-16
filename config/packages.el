(message "- packages configurations...")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Use Package before Emacs initialization.
(setq package-enable-at-startup nil)
(package-initialize)

;; Emmet mode (aka Zen Coding)
(unless (package-installed-p 'emmet-mode) (package-install 'emmet-mode))
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'web-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces.
(define-key emmet-mode-keymap (kbd "C-j") nil) ;; C-RET is enough

;; multiple-cursors
(unless (package-installed-p 'multiple-cursors) (package-install 'multiple-cursors))
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

;; expand-region - extension to increase selected region by semantic units
(unless (package-installed-p 'expand-region) (package-install 'expand-region))
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; SCSS mode
(unless (package-installed-p 'scss-mode) (package-install 'scss-mode))
(require 'scss-mode)
(setq scss-compile-at-save nil)
(setq css-indent-offset 2)

;; YAML mode
(unless (package-installed-p 'yaml-mode) (package-install 'yaml-mode))
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Syntax highlighting for Slim
(unless (package-installed-p 'slim-mode)
  (package-install 'slim-mode))

;;flycheck for on the fly syntax checking
(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))
(add-hook 'after-init-hook 'global-flycheck-mode)

;; inf-ruby provides a REPL buffer connected to a Ruby subprocess
(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

;; Projectile is a project interaction library for Emacs
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(projectile-global-mode)
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)

;; Lorem Ipsum mode
(unless (package-installed-p 'lorem-ipsum) (package-install 'lorem-ipsum))
(require 'lorem-ipsum)

;; Fuzzy matching for Emacs ... a la Sublime Text.
(unless (package-installed-p 'flx-ido)
  (package-install 'flx-ido))
(flx-ido-mode 1)
(setq ido-use-faces nil) ;; disable ido faces to see flx highlights.

;; Yasnippet - A template system for Emacs
(unless (package-installed-p 'yasnippet)
  (package-install 'yasnippet))
(setq yas-snippet-dirs (directory-files "~/.emacs.d/snippets" t))
(yas-global-mode 1)

;; Markdown mode
(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; web-mode - an autonomous emacs major-mode for editing web templates
(unless (package-installed-p 'web-mode) (package-install 'web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Lua mode
(unless (package-installed-p 'lua-mode)
  (package-install 'lua-mode))

;; REST Client
(unless (package-installed-p 'restclient)
  (package-install 'restclient))
