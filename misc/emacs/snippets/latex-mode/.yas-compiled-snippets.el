;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("och" "\\documentclass{article}\n\\usepackage[utf8]{inputenc}\n\\usepackage[norsk]{babel}\n\\usepackage[a4paper]{geometry}\n\\usepackage{listings}\n\\usepackage{graphicx}\n\\usepackage{float}\n\\usepackage{color}\n\n\\title{${1:Title}}\n\\author{Ole Petter Orhagen}\n\\date{\\today}\n\n\\begin{document}\n\n\\maketitle\n\\newpage\n\n$0\n\n\\end{document}" "och-template"
                        (<
                         (buffer-chars-modified-tick)
                         10)
                        nil nil "/Users/olepor/.emacs.d/private/snippets/latex-mode/och-template.yasnippet" nil nil)
                       ("bmatrix"
                        (progn
                          (let*
                              ((snippet "")
                               (counter 1)
                               (matrix-dimensions
                                (read-number "mxn: "))
                               (rows
                                (read-number "rows: "))
                               (columns
                                (read-number "columns: ")))
                            (setq snippet "\\[\n\\begin{bmatrix}\n")
                            (dotimes
                                (i rows)
                              (dotimes
                                  (j columns)
                                (setq snippet
                                      (concat snippet
                                              (format "${%d:%d}" counter counter)
                                              "& "))
                                (setq counter
                                      (1+ counter)))
                              (setq snippet
                                    (concat snippet "\\\\\\ \n")))
                            (setq snippet
                                  (concat snippet "\\end{bmatrix} \n \\] \n $0"))
                            (yas-expand-snippet snippet)))
                        "bmatrix" nil nil nil "/Users/olepor/.emacs.d/private/snippets/latex-mode/bmatrix.yasnippet" nil nil)))


;;; Do not edit! File generated at Mon Jun 20 16:11:39 2016
