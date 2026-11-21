\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{technical}[2026/11/21 Clase de documento personalizada]

% Pasar cualquier opción desconocida (ej. 12pt, a4paper, letterpaper) a la clase base 'article'
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Cargar la clase base (puedes cambiar 'article' por 'report' o 'book' si lo prefieres)
\LoadClass{report}

% ==============================================================================
% Idioma y codificación del documento
% ==============================================================================
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[spanish]{babel}

% ==============================================================================
% Paquetes generales
% ==============================================================================
% Nota: Se eliminó la carga duplicada de 'lastpage'
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{refcount}
\RequirePackage{graphicx}

% ==============================================================================
% Ubicación de archivos e imágenes
% ==============================================================================
\graphicspath{{./Img/}}

% ==============================================================================
% Estilo, fuentes y apariencia
% ==============================================================================
\RequirePackage{libertinus}
\RequirePackage[left=25mm, right=25mm, top=35mm, bottom=30mm, headheight=35mm]{geometry}
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\@seccntformat}[1]{\csname the#1\endcsname\quad}

% Configuración de encabezados y pies de página
\pagestyle{fancy}
\fancyhf{} % Limpia encabezados y pies por defecto (opcional, recomendado)
\lhead{\includegraphics[width=0.1\textwidth]{jp_logo}}
\rfoot{Página \thepage\ de \pageref{LastPage}} % Ejemplo aprovechando lastpage

\endinput
