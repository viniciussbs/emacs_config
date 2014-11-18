;;; bunker-vip-theme.el --- Github color theme for GNU Emacs 24

;; Copyright (C) 2014 Vinícius Sales <contato@vinicius-sales.com.br>

;; Author: Vinícius Sales
;; Keywords: bunker color theme
;; URL: http://github.com/vinicius/bunker-color-themes
;; Package-Requires: ((color-theme "6.6.1"))

;; This file is not a part of GNU Emacs.

;;; Commentary:

;; This is a theme inspired by the http://bunker.vc bunker style.

;;; License:

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Code:

(deftheme bunker-vip "Bunker VIP: a bunker.vc theme for Emacs 24 based on fantasy.ninja colors.")

(custom-theme-set-faces
 'bunker-vip

 ;; Basic settings
 `(default		((t (:font "Courier New-15" :stipple nil :background "#2d281e" :foreground "#ffdcc8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal))))
 
 `(cursor			((t (:background "#ffdcc8"))))
 `(mouse			((t (:background "#ffdcc8"))))
 `(highlight	((t (:background "#3e392e"))))
 `(region			((t (:background "#090806" :distant-foreground "#ffffff"))))

 `(isearch ((t (:background "#cda044" :foreground "#2d281e"))))

 `(show-paren-match			((t (:background "#1f1c15" :foreground "#ffdcc8" :underline t))))
 `(show-paren-mismatch	((t (:background "#e36372" :foreground "#ffffff"))))

 `(minibuffer-prompt ((t (:foreground "#ffffff"))))

 `(mode-line					((t (:background "#1f1c15" :foreground "#ffdcc8"))))
 `(mode-line-inactive ((t (:background "#1f1c15" :foreground "#2d281e"))))

 `(fringe ((t (:background "#3e392e"))))

 `(linum ((t (:foreground "#5f5a50"))))
 
 ;; Generic font settings:
 `(font-lock-builtin-face						((t (:foreground "#ffdcc8"))))
 `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 `(font-lock-comment-face						((t (:foreground "#5f5a50" :slant italic :italic t))))
 `(font-lock-constant-face					((t (:foreground "#ffdcc8"))))
 `(font-lock-doc-face								((t (:foreground "#ffdcc8"))))
 `(font-lock-function-name-face			((t (:foreground "#ffdcc8"))))
 `(font-lock-keyword-face						((t (:foreground "#cda044"))))
 `(font-lock-negation-char-face			((t (:bold t))))
 `(font-lock-reference-face					((t (nil))))
 `(font-lock-string-face						((t (:foreground "#ffffff"))))
 `(font-lock-type-face							((t (:foreground "#ffdcc8"))))
 `(font-lock-variable-name-face			((t (:foreground "#ffdcc8"))))
 `(font-lock-warning-face						((t (:foreground "#cda044"))))

 `(css-property ((t (:foreground "#ffdcc8"))))
 `(css-selector ((t (:foreground "#cda044"))))

 `(web-mode-builtin-face					((t (:foreground "#cda044"))))
 `(web-mode-comment-face					((t (:inherit font-lock-comment-face))))
 `(web-mode-constant-face					((t (:foreground "#cda044"))))
 `(web-mode-function-name-face		((t (:foreground "#cda044"))))
 `(web-mode-keyword-face					((t (:foreground "#cda044"))))
 `(web-mode-string-face						((t (:inherit font-lock-string-face))))
 `(web-mode-symbol-face						((t (:foreground "#cda044"))))
 `(web-mode-type-face							((t (:foreground "#cda044"))))
 `(web-mode-variable-name-face		((t (:foreground "#cda044"))))
 `(web-mode-doctype-face					((t (:foreground "#ffdcc8"))))
 `(web-mode-html-tag-face					((t (:foreground "#ffdcc8"))))
 `(web-mode-html-tag-bracket-face ((t (:foreground "#ffdcc8"))))
 `(web-mode-html-attr-name-face		((t (:foreground "#ffdcc8"))))
 `(web-mode-html-attr-value-face	((t (:foreground "#ffffff"))))
 `(web-mode-html-attr-equal-face	((t (:foreground "#ffdcc8"))))
 `(web-mode-html-tag-custom-face	((t (:foreground "#ffdcc8"))))
 `(web-mode-attr-tag-custom-face	((t (:foreground "#ffdcc8"))))
 )

(provide-theme 'bunker-vip)
;;; bunker-vip-theme.el ends here
