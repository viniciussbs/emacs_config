;;; github-dark-theme.el --- Github color theme for GNU Emacs 24

;; Copyright (C) 2014 Vinícius Sales <contato@vinicius-sales.com.br>

;; Author: Vinícius Sales
;; Keywords: github color theme

;; This file is not a part of GNU Emacs.

;;; Comentary:

;; This theme was created upon Dudley Flanders' github-theme and inspired
;; in Bastien Dejean's n0tch2k color theme for iTerm2.

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

(deftheme github-dark "Port of Github Theme for Emacs 24 with dark colors")

(let ((*background-color*  "#2d2d2d")
      (*background-mode*  'dark)
      (*border-color*  "black")
      (*cursor-color*  "#ffffff")
      (*foreground-color*  "#d3d3d3")
      (*mouse-color*  "#ffffff"))
  
  (custom-theme-set-faces
   'github-dark

   `(default ((t (:stipple nil :background "#2d2d2d" :foreground "#d3d3d3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal))))
   `(css-property ((t (:foreground "#d3d3d3"))))
   `(css-selector ((t (:foreground "#d9c4b2" bold: t))))
   `(cursor ((t (:background "#ffffff"))))
   `(ecb-default-general-face ((t (:height 0.9))))
   `(ecb-default-highlight-face ((t (:background "#bcd5fa" :foreground "#000000"))))
   `(ecb-directories-general-face ((t (:bold t :weight bold))))
   `(ecb-source-in-directories-buffer-face ((t (:foreground "#445588"))))
   `(erb-comment-delim-face ((t (:italic t :bold t :slant italic :foreground "#898989" :weight bold))))
   `(erb-comment-face ((t (:bold t :background "#eeeeee" :foreground "#898989" :weight bold))))
   `(erb-delim-face ((t (:bold t :weight bold))))
   `(erb-exec-delim-face ((t (:bold t :weight bold))))
   `(erb-exec-face ((t (:background "#eeeeee"))))
   `(erb-face ((t (:background "#eeeeee"))))
   `(erb-out-delim-face ((t (:bold t :foreground "#445588" :weight bold))))
   `(erb-out-face ((t (:background "#eeeeee"))))
   `(font-lock-builtin-face ((t (nil))))
   `(font-lock-comment-delimiter-face ((t (:italic t :slant italic :foreground "#898989"))))
   `(font-lock-comment-face ((t (:italic t :foreground "#898989" :slant italic))))
   `(font-lock-constant-face ((t (:foreground "#d3d3d3"))))
   `(font-lock-doc-face ((t (:foreground "#d9c4b2"))))
   `(font-lock-function-name-face ((t (:foreground "#d9c4b2"))))
   `(font-lock-keyword-face ((t (:foreground "#d9c4b2" :bold t :weight bold))))
   `(font-lock-negation-char-face ((t (nil))))
   `(font-lock-reference-face ((t (nil))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground "#009926"))))
   `(font-lock-regexp-grouping-construct ((t (:foreground "#009926"))))
   `(font-lock-string-face ((t (:foreground "#b96a64"))))
   `(font-lock-type-face ((t (:foreground "#d3d3d3"))))
   `(font-lock-variable-name-face ((t (:foreground "#d3d3d3"))))
   `(highlight ((t (:background "#232323"))))
   `(link ((t (:foreground "blue1" :underline t))))
   `(link-visited ((t (:underline t :foreground "magenta4"))))
   `(minibuffer-prompt ((t (:foreground "#d9c4b2"))))
   `(mode-line ((t (:background "#d3d3d3" :foreground "#2d2d2d"))))
   `(mode-line-inactive ((t (:background "#333333" :foreground "#898989" :box '(:line-width 1 :color "#898989" :style nil)))))
   `(mouse ((t (:background "#bcd5fa"))))
   `(quack-about-face ((t (:family "Helvetica"))))
   `(quack-about-title-face ((t (:bold t :foreground "#008000" :weight bold :height 2.0 :family "Helvetica"))))
   `(quack-banner-face ((t (:family "Helvetica"))))
   `(quack-pltfile-dir-face ((t (:bold t :background "gray33" :foreground "white" :weight bold :height 1.2 :family "Helvetica"))))
   `(quack-pltfile-file-face ((t (:bold t :background "gray66" :foreground "black" :weight bold :height 1.2 :family "Helvetica"))))
   `(quack-pltfile-prologue-face ((t (:background "gray66" :foreground "black"))))
   `(quack-pltish-class-defn-face ((t (:bold t :weight bold :foreground "purple3"))))
   `(quack-pltish-comment-face ((t (:foreground "cyan4"))))
   `(quack-pltish-defn-face ((t (:bold t :foreground "blue3" :weight bold))))
   `(quack-pltish-keyword-face ((t (:bold t :weight bold))))
   `(quack-pltish-module-defn-face ((t (:bold t :weight bold :foreground "purple3"))))
   `(quack-pltish-paren-face ((t (:foreground "#b96a64"))))
   `(quack-pltish-selfeval-face ((t (:foreground "green4"))))
   `(quack-smallprint-face ((t (:height 0.8 :family "Courier"))))
   `(quack-threesemi-h1-face ((t (:bold t :weight bold :height 1.4 :family "Helvetica"))))
   `(quack-threesemi-h2-face ((t (:bold t :weight bold :height 1.2 :family "Helvetica"))))
   `(quack-threesemi-h3-face ((t (:bold t :weight bold :family "Helvetica"))))
   `(quack-threesemi-semi-face ((t (:background "#c0ffff" :foreground "#a0ffff"))))
   `(quack-threesemi-text-face ((t (:background "#c0ffff" :foreground "cyan4"))))
   `(region ((t (:background "#424242"))))
   `(show-paren-match ((t (:background "#424242" :foreground "#ffffff" :bold t :underline t))))
   `(show-paren-mismatch ((t (:background "#b96a64"))))))

(provide-theme 'github-dark)

;;; color-theme-github-dark.el ends here
