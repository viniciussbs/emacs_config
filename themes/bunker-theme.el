;;; bunker-theme.el --- Github color theme for GNU Emacs 24

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

(deftheme bunker "Bunker: a bunker.vc theme for Emacs 24")

(custom-theme-set-faces
 'bunker

 ;; Basic settings
 `(default		((t (:font "Courier New-15" :stipple nil :background "#545d5a" :foreground "#ede7d8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal))))
 
 `(cursor			((t (:background "#ede7d8"))))
 `(mouse			((t (:background "#ede7d8"))))
 `(highlight	((t (:background "#5e6764"))))
 `(region			((t (:background "#649a87"))))

 `(isearch ((t (:background "#e1cfaf" :foreground "#545d5a"))))

 `(show-paren-match			((t (:background "#649a87" :foreground "#ede7d8" :underline t))))
 `(show-paren-mismatch	((t (:background "#e36372" :foreground "#ffffff"))))

 `(minibuffer-prompt ((t (:foreground "#ffffff"))))

 `(mode-line					((t (:background "#363F3C" :foreground "#ede7d8"))))
 `(mode-line-inactive ((t (:background "#363F3C" :foreground "#545d5a"))))

 `(fringe ((t (:background "#5e6764"))))
 
 ;; Generic font settings:
 `(font-lock-builtin-face						((t (:foreground "#ede7d8"))))
 `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 `(font-lock-comment-face						((t (:foreground "#b7c9af" :slant italic :italic t))))
 `(font-lock-constant-face					((t (:foreground "#ede7d8"))))
 `(font-lock-doc-face								((t (:foreground "#ede7d8"))))
 `(font-lock-function-name-face			((t (:foreground "#ede7d8"))))
 `(font-lock-keyword-face						((t (:foreground "#e1cfaf"))))
 `(font-lock-negation-char-face			((t (:bold t))))
 `(font-lock-reference-face					((t (nil))))
 `(font-lock-string-face						((t (:foreground "#ffffff"))))
 `(font-lock-type-face							((t (:foreground "#ede7d8"))))
 `(font-lock-variable-name-face			((t (:foreground "#ede7d8"))))
 `(font-lock-warning-face						((t (:foreground "#e1cfaf"))))

 `(css-property ((t (:foreground "#ede7d8"))))
 `(css-selector ((t (:foreground "#e1cfaf"))))

 `(web-mode-builtin-face					((t (:foreground "#e1cfaf"))))
 `(web-mode-comment-face					((t (:inherit font-lock-comment-face))))
 `(web-mode-constant-face					((t (:foreground "#e1cfaf"))))
 `(web-mode-function-name-face		((t (:foreground "#e1cfaf"))))
 `(web-mode-keyword-face					((t (:foreground "#e1cfaf"))))
 `(web-mode-string-face						((t (:inherit font-lock-string-face))))
 `(web-mode-symbol-face						((t (:foreground "#e1cfaf"))))
 `(web-mode-type-face							((t (:foreground "#e1cfaf"))))
 `(web-mode-variable-name-face		((t (:foreground "#e1cfaf"))))
 `(web-mode-doctype-face					((t (:foreground "#ede7d8"))))
 `(web-mode-html-tag-face					((t (:foreground "#ede7d8"))))
 `(web-mode-html-tag-bracket-face ((t (:foreground "#ede7d8"))))
 `(web-mode-html-attr-name-face		((t (:foreground "#ede7d8"))))
 `(web-mode-html-attr-value-face	((t (:foreground "#ffffff"))))
 `(web-mode-html-attr-equal-face	((t (:foreground "#ede7d8"))))
 `(web-mode-html-tag-custom-face	((t (:foreground "#ede7d8"))))
 `(web-mode-attr-tag-custom-face	((t (:foreground "#ede7d8"))))
 )

(provide-theme 'bunker)
;;; bunker-theme.el ends here
