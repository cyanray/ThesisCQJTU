\ProvidesClass{thesis-cqjtu}
\LoadClass[a4paper,fontset=adobe,zihao=-4,UTF8]{ctexart}

% 设置标题、作者、指导教师等参数
\renewcommand{\title}[1]{\gdef\@title{#1} \gdef\THETITLE{#1} }
\renewcommand{\author}[1]{ \gdef\@author{#1} \gdef\THEAUTHOR{#1}}
\renewcommand{\date}[1]{ \gdef\@date{#1} \gdef\THEDATE{#1}}
\newcommand{\college}[1]{\gdef\THECOLLEGE{#1}}
\newcommand{\major}[1]{\gdef\THEMAJOR{#1}}
\newcommand{\authorno}[1]{\gdef\THEAUTHORNO{#1}}
\newcommand{\instructor}[1]{\gdef\THEINSTRUCTOR{#1}}
\newcommand{\reviewer}[1]{\gdef\THEREVIEWER{#1}}
\newcommand{\articleclass}[1]{\gdef\THEARTICLECLASS{#1}}

% 页边距设置
\RequirePackage[a4paper,inner=2.1cm, outer=2.1cm, top=3.87cm, bottom=3.47cm,bindingoffset=1cm]{geometry}

% 引入常用宏包
\RequirePackage{metalogo}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{float}
\RequirePackage{amsmath}
\RequirePackage{appendix}
\RequirePackage[section]{placeins}  % 浮动不要跨越 section

% 使用 Times New Roman 字体
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

% 定义一些中文字体
\newcommand{\xingkai}{\CJKfontspec{STXingkai}}                    %华文行楷
\newcommand{\xihei}{\CJKfontspec[AutoFakeBold=3]{STXihei}}        %华文细黑
\newcommand{\heitibold}{\CJKfontspec[AutoFakeBold=2.5]{SimHei}}   %黑体加粗

% 设置页眉到正文的距离
\setlength{\headsep}{12.1194mm}

% 调整列表环境的间距
\RequirePackage{enumitem}
\setenumerate[1]  {labelwidth=1.5em,leftmargin=0em,listparindent=0em,itemindent=3.5em,itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setitemize[1]    {labelwidth=1.5em,leftmargin=0em,listparindent=0em,itemindent=3.5em,itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}
\setdescription[1]{labelwidth=1.5em,leftmargin=0em,listparindent=0em,itemindent=3.5em,itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=0pt}


% 设置图、表编号格式
\RequirePackage{caption}
\renewcommand {\thetable} {\thesection{}.\arabic{table}}
\renewcommand {\thefigure} {\thesection{}.\arabic{figure}}
\captionsetup
{
  font=small,          % 采用五号字体
  labelformat=default, % 去除图、表编号的冒号
  labelsep=quad        % 序号标签和题注之间用两个空格
} 
% 设置公式的编号格式，让公式编号带上章节序号
\numberwithin{equation}{section}

% 设置题注与图片的间距
\setlength{\abovecaptionskip}{0pt}

% 调整正文与公式之间的距离(下面的代码要放到document环境内)
% \setlength{\abovedisplayshortskip}{0pt}
% \setlength{\belowdisplayshortskip}{0pt}
% \setlength{\abovedisplayskip}{0pt}
% \setlength{\belowdisplayskip}{0pt}

% 让目录可跳转
\RequirePackage{hyperref}

% 设置目录样式
\RequirePackage{titletoc}
\renewcommand{\contentsname}{ \hfill \textbf{目\qquad{}录} \hfill }
\titlecontents{section}
              [0em]
              { \linespread{1.0} \selectfont \rmfamily \songti \zihao{-4} }%
              {\thecontentslabel\enspace}%
              {}%
              {\titlerule*[0.5pc]{$\cdot$}\contentspage \hspace*{0em}}

\titlecontents{subsection}
              [2em]
              { \linespread{1.0} \selectfont \rmfamily \songti \zihao{-4} }%
              {\thecontentslabel\enspace}%
              {}%
              {\titlerule*[0.5pc]{$\cdot$}\contentspage \hspace*{0em}}

\titlecontents{subsubsection}
              [4em]
              { \linespread{1.0} \selectfont \rmfamily \songti \zihao{-4} }%
              {\thecontentslabel\enspace}%
              {}%
              {\titlerule*[0.5pc]{$\cdot$}\contentspage \hspace*{0em}}

% 让目录的点状线延申到页码
\makeatletter
\renewcommand{\@pnumwidth}{0pt{}}
\makeatother

% 设置正文的行间距为固定值 22 磅（近似）
\linespread{1.52} \selectfont


% 设置页眉页脚
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\RequirePackage{afterpage}

% 正文之前的页眉
\pagestyle{fancy}
\lhead{}
\chead{\zihao{5} \THETITLE }
\rhead{}
\lfoot{}
\cfoot{ \zihao{-5}  -\ \thepage\ -}  % 这里的 '\ ' 是大空格
\rfoot{}
\renewcommand{\headrulewidth}{0.75pt} %页眉线宽

% 正文的页眉
\fancypagestyle{plain} % 定义一个名为 plain 的页眉页脚样式
{
  \lhead{}
  \chead{ \zihao{5} 重庆交通大学\the\year{}届\THEMAJOR{}专业毕业\THEARTICLECLASS{}} 
  \rhead{}
  \lfoot{}
  \cfoot{ \zihao{-5}  -\ \thepage\ -}  % 这里的 '\ ' 是大空格
  \rfoot{}
  \renewcommand{\headrulewidth}{0.75pt} %页眉线宽
}

% 封面的页眉为空
\fancypagestyle{empty}
{
  \lhead{}
  \chead{} 
  \rhead{}
  \lfoot{}
  \cfoot{}
  \rfoot{}
  \renewcommand{\headrulewidth}{0pt}
}

% 该命令使得数字应用 CJK 字体（用于节标题序号）
\newcommand{\NumberUseCJKFont}{ \xeCJKDeclareCharClass{CJK}{`0 -> `9} }

% CTeX 宏集设置
\ctexset 
{
  section = 
  {
    format = {  \centering \sffamily \heiti \zihao{-3} },
    % numberformat += { \NumberUseCJKFont },
    afterskip = { 11pt + 3pt }, % 段后 11 磅 + 3pt修正值（可能是因为1.5倍行距）
    break = { \clearpage }      % 新开一页
  },
  subsection = 
  {
    format = { \raggedright \sffamily \heiti \zihao{4} },
    % numberformat += { \NumberUseCJKFont },
    beforeskip = { 0ex }
    % afterskip = { 1.5ex + .3ex }
  },
  subsubsection = 
  {
    format = { \raggedright \sffamily \heiti \zihao{-4} },
    % numberformat += { \NumberUseCJKFont },
    beforeskip = { 0ex }
  },
  bibname = {参~考~文~献},   % 模板要求中间加空格，很怪
  appendix/name = {附录,},
}

% 定义中文摘要环境
\RequirePackage{indentfirst}
\newenvironment{cnabstract}
{
  \par \vspace*{-8mm} % 我也没搞懂为什么一行那么大用vspace缩小一点
	\begin{center} 
    \heiti
    \zihao{-3}
    摘\qquad{}要  
  \end{center}
  \addcontentsline{toc}{section}{摘\qquad{}要}

  \setlength{\parindent}{2em}
}
{
  \clearpage
}

% 定义英文摘要环境
\newenvironment{enabstract}[1][English Title]
{
  \begin{center}
    \linespread{1.0}\selectfont
    \zihao{-3}
    \textbf{#1}
  \end{center}

	\begin{center}
    \zihao{-3}
    Abstract
  \end{center}
  \addcontentsline{toc}{section}{Abstract}

  \setlength{\parindent}{2em}
  \zihao{-4}
  \linespread{1.20}\selectfont
}
{
  \clearpage
  \linespread{1.52} \selectfont
}

% 中文关键词
\newcommand{\cnkeywords}[1]
{ 
  ~\\
  {\heiti 关键词：}{\fangsong #1}
}

% 英文关键词
\newcommand{\enkeywords}[1]
{ 
  ~\\
  \textbf{Key Words: }{#1}
}

% 定义无编号章节（自动加入目录）
\newcommand{\nsection}[1]
{
  \section*{#1}
  \addcontentsline{toc}{section}{#1}
}

% 文献管理相关设置
\RequirePackage[numbers,sort&compress,square,super]{natbib}
\RequirePackage{hypernat}
\RequirePackage{bibentry}
\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{ \cite{#1}}}}

% 参考文献条目间行间距
\setlength{\bibsep}{2pt}


% 定义封面
\RequirePackage{lineno}
\RequirePackage{tikz}
\usetikzlibrary{tikzmark}
\RequirePackage{centerlastline}

% 固定距离内容填入及下划线
\makeatletter
\newcommand\fixedunderlineleft[2][1cm]{\underline{\hb@xt@ #1{#2\hss}}}
\newcommand\fixedunderlinecenter[2][1cm]{\underline{\hb@xt@ #1{\hss#2\hss}}}
\makeatother

\def\makecover
{
  \newpage
  \newgeometry{inner=0cm, outer=0cm, top=0cm, bottom=0cm,bindingoffset=0cm}
  \thispagestyle{empty}
  \linespread{1.0} \selectfont
  \begin{center}
    \vspace*{4.2cm}
    % 校徽 LOGO
    \begin{figure}[H]
      \centering
      \includegraphics[width=12.2cm]{figures/logo.pdf}
    \end{figure}
    {
      \xihei
      \fontsize{36pt}{\baselineskip}\selectfont
      \textbf{本科毕业\THEARTICLECLASS{}}
    }

    \vspace*{1em}

    \newlength{\TitleWidth}
    \setlength{\TitleWidth}{12.5cm}
    \newlength{\UnderLineDepth}
    \setlength{\UnderLineDepth}{-.5em}
    \begin{center}
      \begin{tabular}{rp{\TitleWidth}}
        \xihei
        \zihao{2}
        \textbf{题目：}&
        \begin{linenumbers*}
          \internallinenumbers
          \renewcommand\makeLineNumber
          {
            \hss\linenumberfont\hskip\linenumbersep
            \tikz[remember picture,overlay]
            \draw (0,\UnderLineDepth) -- (\TitleWidth,\UnderLineDepth);
          }
          %\begin{centerlastline}  % 居中最后一行
            \linespread{1.4} \selectfont
            \songti 
            \zihao{2}
            \THETITLE{}   % 标题
          %\end{centerlastline}
        \end{linenumbers*}\\
      \end{tabular}
    \end{center}

    \vspace*{5em}

    \begin{center}
      {
        \zihao{-3}\songti
        \linespread{1.6} \selectfont
        \begin{tabular}{p{0.6cm}p{6.4em}@{\extracolsep{0.5em}}lc}
          ~ & 学 \hfill 院：& \fixedunderlinecenter[6.08cm]{\THECOLLEGE{}} & \\
          ~ & 专 \hfill 业：& \fixedunderlinecenter[6.08cm]{\THEMAJOR{}} & \\
          ~ & 学 \hfill 生 \hfill 姓 \hfill 名：& \fixedunderlinecenter[6.08cm]{\THEAUTHOR{}} & \\
          ~ & 学 \hfill 号：& \fixedunderlinecenter[6.08cm]{\THEAUTHORNO{}} & \\
          ~ & 指 \hfill 导 \hfill 教 \hfill 师：& \fixedunderlinecenter[6.08cm]{\THEINSTRUCTOR{}} & \\
          ~ & 评 \hfill 阅 \hfill 教 \hfill 师：& \fixedunderlinecenter[6.08cm]{\THEREVIEWER{}} & \\
          ~ & 完 \hfill 成 \hfill 时 \hfill 间：& \fixedunderlinecenter[6.08cm]{\THEDATE{}} & \\
        \end{tabular}
      }
    \end{center}
    ~\\
    ~\\
    {
      \xingkai
      \zihao{-2}
      重庆交通大学
      \\
      \zihao{5}
      CHONGQING JIAOTONG UNIVERSITY 
    }

  \end{center}
  \clearpage
  \restoregeometry
}

% 定义原创性声明和使用授权书
\RequirePackage{dashrule}
\def\originality
{
  {
    \newpage
    \par \vspace*{-8mm} % 我也没搞懂为什么一行那么大用vspace缩小一点
    \linespread{1.6} \selectfont
    \begin{center}
      {
      \heitibold \zihao{-3} 
      \textbf{本科毕业论文（设计）原创性声明}
      }
    \end{center}
  
  本人郑重声明：所提交的毕业论文（设计），是本人在导师指导下，独立进行研究工作所取得的成果。除文中已注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文研究做出过重要贡献的个人和集体，均已在文中以明确方式标明。
  
  本人完全意识到本声明的法律后果由本人承担。
  
  {
    \kaishu \zihao{4}
    \noindent{}作者签名（亲笔）：\hfill 年\hspace*{2em}月\hspace*{2em}日
  }
  
  \noindent \hdashrule{\textwidth}{1pt}{1mm}
  
    \begin{center}
      {
      \heitibold \zihao{-3} 
      \textbf{本科毕业论文（设计）版权使用授权书}
      }
    \end{center}
  
  本毕业论文（设计）作者完全了解学校有关保留、使用学位论文的规定，本科生在校攻读期间毕业论文（设计）工作的知识产权单位属重庆交通大学，同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅；本人授权重庆交通大学可以将毕业论文（设计）的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、汇编毕业设计（论文）。
  
  {
    \kaishu \zihao{4}
    \noindent{}作者签名（亲笔）：\hfill 年\hspace*{2em}月\hspace*{2em}日 \par
    \vspace*{12pt}
    \noindent{}导师签名（亲笔）：\hfill 年\hspace*{2em}月\hspace*{2em}日
  }
  \clearpage
  }
\linespread{1.52} \selectfont
}
