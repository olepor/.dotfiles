
;; Requires evil and spacemacs (How to handle this?)

;; j = 106_(ascii)
(defvar ls-subsection-trigger 106 "The key that triggers a subsection, keys are read as ascii values")

;; Simple method for inserting a section or subsection depending on keypress
(defun latex-snippet-sub-s ()
  (interactive)
  (if (char-equal (read-key "sub?") 106)
      (progn (insert "\\section*{}") (backward-char)))
  (progn (insert "\\subsection*{}") (backward-char)))



(spacemacs|define-transient-state latex-snippet-insert
  :title "LaTeX snippet insert state"
  :doc "\n[%s(length kill-ring-yank-pointer)/%s(length kill-ring)] \
[_C-j_/_C-k_] cycles through yanked text, [_p_/_P_] pastes the same text above or \
below. Anything else exits.
[_s_] (sub)section [_b_] begin environment "
        :bindings
        ("C-j" evil-paste-pop)
        ("C-k" evil-paste-pop-next)
        ("p" evil-paste-after)
        ("P" evil-paste-before)
        ("0" spacemacs//transient-state-0)
("s" latex-snippet-sub-s)
("b" latex-snippet-sub-s))

;; Changes TeX-command-master to yas-insert-snippet, far more useful
(spacemacs/set-leader-keys-for-major-mode 'latex-mode "," 'yas-insert-snippet)
