(message "Loading configurations...")

(load-file "~/.emacs.d/config/common.el")
(load-file "~/.emacs.d/config/ui.el")
(load-file "~/.emacs.d/config/editor.el")
(load-file (concat "~/.emacs.d/config/os/" (cond ((eq system-type 'darwin) "osx.el")
																								 ((eq system-type 'gnu/linux) "linux/el"))))

(message "All configurations successfully loaded.")
