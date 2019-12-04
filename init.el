
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(message "Loading configurations...")

(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/common.el")
(load-file "~/.emacs.d/config/ui.el")
(load-file "~/.emacs.d/config/editor.el")
(load-file (concat "~/.emacs.d/config/os/" (cond ((eq system-type 'darwin) "osx.el")
																								 ((eq system-type 'gnu/linux) "linux.el"))))

(message "All configurations successfully loaded.")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e9910e2b1fd13eaf308a67062596584d552f9e4940bad73b0e55f5b8ba56a365" "ad79d90546e34078634add073fdc68948f09ae0dfccffffb5294f87a8b862e72" "0496ba3ff126340c6e8c41ca6c8d0136575f51daf127184d8db5cfd929930691" "3a69621a68c2d3550a4c777ffc000e1ea66f5bc2f61112814c591e1bda3f5704" "013e87003e1e965d8ad78ee5b8927e743f940c7679959149bbee9a15bd286689" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "b880872e60d1c7090fcd3d89f287d2a5681e57be9ac90d4682ea442149f5135f" "be7eadb2971d1057396c20e2eebaa08ec4bfd1efe9382c12917c6fe24352b7c1" default)))
 '(package-selected-packages
   (quote
    (ag diminish eink-theme flycheck-color-mode-line company-graphql company-mode add-node-modules-path exec-path-from-shell graphql-mode monotropic-theme writeroom-mode nord-theme flycheck-credo smartparens avy feature-mode evil yaml-mode web-mode slim-mode scss-mode restclient projectile powerline markdown-mode magit lua-mode lorem-ipsum js2-refactor inf-ruby flycheck flx-ido expand-region emmet-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
