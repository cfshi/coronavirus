[proposal 5 pages](https://www.researchnet-recherchenet.ca/rnr16/vwOpprtntyDtls.do?prog=3248#howtoapply)

# Abstract (max 2000 characters)

# Summary of Research Proposal (max one page)


----------------------------------------------------------------------

## New material
\head{Methods and feasibility}

\subhead{Data and Sources}

Media data from November 2019 (before when the virus was officially acknowledged to ensure no related news was overlooked) till June 2020 (when the outbreak is expected to temper down) will be collected.  Based on the virus impact (geographically, socially and epidemically) news media with top circulations and online access will be selected from Singapore, Taiwan, Hong Kong, China, Canada and USA and England. In addition, we plan to gather Sing Tao Daily, and World Journal, the most circulated Chinese news papers in Canada and United States respectively.  The chinese news will add dimension to cultural and social perception  of Chinese immigration population in North America.

We will use Lexis-Nexis search engine to extract news.  OriProbe Information Services \url{https://www.oriprobe.com/peoplesdaily.shtml} provides access to the archive of People’s Daily of China.  Key words used for searching is attached (Becky’s figure) 

Twitter data (countries and region covered?) will be collected by (python or AI or purchased? need some details on how to access tweets. ) 

\begin{CJK*}{UTF8}{gbsn}
GoogleTrends accumulate data of search frequency around the world by region and county and by time.  It reflects awareness-related burst of searches \cite{BousAgac17, MahrBrag19}.  We use it as an index to reflect the concern and interest the public expressed during the outbreak.  

(CS:  we can delete this part or move it to coding book) key words search for Google trend, and official public health websites (discussed below) include coronavirus, 19-nCov, COVID-19, influenza, 武疫 (Wu Virus)，武漢病毒 (Wuhan Virus)，武漢(Wuhan)，武漢肺炎 (Wuhan pneumonia)，肺炎 (pneumonia)，冠状病毒 (coronavirus), 新型冠状病毒 (novel coronavirus), 武漢新型冠状病毒 (Wuhan novel coronavirus).

(CS:  someone fill in how we will collect and analyze the trends data)
\end{CJK*}

The epidemic findings from science community is part of the information the public, media and international community rely on. They play a powerful role during public health crises due to the time urgency with which they can disseminate new information, accurate or not. (ref: Early in the Epidemic: Impact of preprints on global discourse of 2019-nCoV transmissibility \url{https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3536663}.  We can also check findings of preprint (speedy information delivery, lack of peer review) in terms of accuracy and how misinformation get circulated based on those findings. (see examples(\url{https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3536663}))

Science publications of COVID-19 (peer-reviewed and preprint) will be extracted by searching Google Scholar, arXiv, bioRxiv, medRxiv, and SSRN, , PubMed, Embase, Medline, and OVID).  We will construct themes of the studies and results.  Our team will evaluate the impact of the publications and compare to whether it is cited, circulated and twitte/re-twitte by the other forums.  

In addition to the above data sources, we will summarize reports, guideline and recommendations on the official health websites:  WHO’s official coronavirus website , the official centres of disease control and prevention in the studied countries (e.g., US CDC , National Health Commission of PRC (http://en.nhc.gov.cn/index.html), PHAC, Canada.   It is noted that each public health instituted mentioned above launched special pages for this outbreak.

We will collect data relating to the outcome of the COVID-19 outbreaks:   travel, movies (\url{https://www.boxofficemojo.com/?ref_=bo_nb_di_mojologo}), restaurants in Taiwan, Singapore, H.K., Canada and USA; or should we focus on North America and on travel and movie box office (\url{https://www.boxofficemojo.com/?ref_=bo_nb_di_mojologo})?

Daily case report data: Daily updates from the Provincal Health Commission of HuBei and outside of HuBei are avalible online. These updates contains information on up-to-date cumulative cases, new cases per day, number of confirm case hospitalized, severity categorizations and deaths.

Final stage of our data analysis,  we will plot google trends data, the daily infected cases and fatality and frequency and main themes of media coverage and tweets,  we expect to construct a proxy indicator for information dissemination and public reaction to the outbreak.  Furthermore, we hope to uncover the communication flow among the four forums.

%% \mlicomment{Not important right now, but I think it is useful to do a annual comparison of interest google trend data. See fig 2 in Li et al. RDC paper.}

\subhead{Analysis of Data}

\subsubhead{Data Mining}

\subsubhead{AI-assisted human-supervised data mining}

(CS: to fill in ideas on how AI will analyze tweets) 

Textual analysis of news media and Twitter will mainly based based on a coding book and implemented by AI.  The coding book should list themes and frames for the analysis, which will be categorized based on a pilot study by trained coders supervised by the team after the proposal is funded.  The basic structure of the themes will outline theme, information types  (e.g., news, information and misinformation based on sources verification), who, where, theme tone and when.  (see  attached [Basic Coding frame](https://github.com/cfshi/coronavirus/blob/master/coding%20book.md)).  We will further apply algorithm to identify false information through topic modelling and track evolution of information content and varsity over time and across geographic areas. (This is basically copied from Naveed.  HELP)

\begin{itemize}
(CS:  we can delete this part or move it to coding book)
\item{key words search for Google trend analysis, and official public health websites: coronavirus, 19-nCov, COVID-19, influenza, (Wu Virus), (Wuhan Virus), (Wuhan), (Wuhan pneumonia), (pneumonia), (coronavirus), (novel coronavirus), (Wuhan novel coronavirus)}
\end{itemize}

\subsubhead{Time-series analysis}
Google trend, reported daily reports, patterns with policy change/case definitions. (CS: A couple of sentence on how we can hack it)

\subsubhead{Contextual analysis}
Contextual analysis will be studied by the researchers.  Media content and information are often socially and politically cultivated \cite{}.  We will implement contextual analyses of the quantitative findings and elaborate how information is framed and disseminated in this uncertain circumstances into context.  Textual analysis using AI is reliable and efficient in terms of data mining.  However, it can be insufficient in understanding what contents connote.  For example, meanings signified in the public reactions to shortage of face masks in Toronto is likely different from  the areas where are heavily impacted with COVID-19 epidemically.  Without referring to circumstance, we will miss what the results signify and its impact on the public.  To amend this issue, we will conduct contextual analysis \citep{} to elaborate the results of textual analysis of tweets and news and uncover its social and cultural perspectives of the text meanings.

(summarizing and comparing policy, guidelines and recommendation by national and international health organizations.
(CS: modelling. Can we do this?:  incorporating media coverage, public and institutional reaction and report (which can be based on modelling results by scientific community and WHO etc), time travelling and spread network (geographical))

\subsubhead{Mathematical modeling}

Modelling: (Can we do this?: incorporating media coverage, public and institutional reaction and report (which can be based on modelling results by scientific community and WHO etc), time travelling and spread network (geographical)
