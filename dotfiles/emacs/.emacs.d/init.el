;; Add marmalade to package repos
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Automatically install missing packages
;; First, refresh package contents
(when (not package-archive-contents)
  (package-refresh-contents))

;; Then add our own
(defvar my-packages '(icicles solarized-theme)
  "A list of packages to ensure are installed at launch.")

;; Install all missing packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Better completion and minibuffers
(require 'icicles)
(icy-mode t)

;; Proper color theme
(load-theme 'solarized-dark t)


