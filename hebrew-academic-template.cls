\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hebrew-academic-template}[2026/03/16 Hebrew Academic Document Class V7.3.0]

% טעינת מחלקת הבסיס
\LoadClass[12pt,a4paper]{article}

% חבילות יסוד לשפות וטקסט דו-כיווני (BiDi)
\RequirePackage{polyglossia}
\RequirePackage{bidi}
\RequirePackage{fontspec}

% חבילות עיצוב לטבלאות, קוד ותמונות מהרצאה L07
\RequirePackage{tcolorbox}
\RequirePackage{array}
\RequirePackage{graphicx}

% הגדרת סביבת קופסת קוד פייתון (pythonbox)
\newtcolorbox{pythonbox}{
    colback=gray!5!white,
    colframe=gray!75!black,
    fonttitle=\bfseries,
    title=Python Code Execution Block,
    ltr
}

% פקודות מותאמות אישית לעבודה דו-לשונית
\newcommand{\en}[1]{\RLE{#1}}
\newcommand{\hebrewsection}[1]{\section{#1}}
