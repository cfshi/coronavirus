
# Call for proposals (due __18 Feb__)

[Canadian Institutes of Health Research Novel Coronavirus Rapid Research Funding Opportunity](https://cihr-irsc.gc.ca/e/51868.html)

[proposal evaluation](https://www.researchnet-recherchenet.ca/rnr16/vwOpprtntyDtls.do?prog=3248#evaluation) 

We intend to focus on the following proposed topic areas
- Social and policy countermeasures research
	- Cultural dimensions of the epidemic such as, examining how individuals and communities understand and react to the disease;
	- Studying the public health response;
	- Developing strategies to combat misinformation, stigma, and fear;


# Draft title suggestions

* How information about COVID-19 travels between interest groups and affects public behaviour
	- We need a better title. Chyun feels “interest groups” is not solid nor attractive enough

* How information about COVID-19 travels across the public, media, science community and policy makers and affects public behaviour
	- It’s a bit long to show those 4 forums, but…

# Research Questions:

1. How does information (and misinformation) travel between scientists, public-health workers, mass media and social media? 

2.  How does communication affect public behaviour and the course of the outbreak? What are the side effects of changes in public behaviour? 
	-  How policy affect with public health behavior in reacting to the infection?

3.  How can scientists and policy-makers evaluate and improve the effectiveness of their communication?

# Resources

-  Google Trend data.  By analyzing google trends data, the daily infected cases and fatality and frequency of media coverage,  we use Google Search Trends and media coverage as a proxy indicator for information dissemination and public reaction  (https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3536663).
		
* Science community report Ro of the virus transmission.  The epidemic findings is part of the information the public, media and international community rely on. They play a powerful role during public health crises due to the time urgency with which they can disseminate new information, accurate or not. (ref: [Early in the Epidemic: Impact of preprints on global discourse of 2019-nCoV transmissibility](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3536663)).  We can also check findings of preprint (speedy information delivery, lack of peer review) in terms of accuracy and how misinformation get circulated based on those findings. (see [examples](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3536663))
		
* Official websites to analyze social and policy countermeasures.  How does the national and international community react to the disease outbreak and with what guidelines (analyzing official websites, such as WHO, CDC, Chinese Center for Disease Control and Prevention, etc)

We will compare policies and recommendations to contain and prevent the spread of the disease in selected countries.  
		* Although WHO position in the beginning of the virus spread was [questioned](https://www.washingtonpost.com/world/asia_pacific/chinese-officials-note-serious-problems-in-coronavirus-response-the-world-health-organization-keeps-praising-them/2020/02/08/b663dd7c-4834-11ea-91ab-ce439aa5c7c1_story.html) , how to interpret WHO information and recommendation need to be cautious.  (It can be another interesting direction of comparison.)

(Chyun’s confusion: Is context same as noise in modelling (e.g., Park and Dushoff 2020):  dynamical or process; noise(randomness directly or indirectly affecting disease transmission); observation noise(randomness underlying how many true cases reported).  Based on their definition, how do context or media, public reaction and pubic policy-guideline fit into models?  Is it a right question?)

- It will be good to incorporate modeling ideas in this project but WHAT?  Also, how workable is it to compare this coronavirus to 2012 MERS and 2002 SARS in terms of the spread and reaction context ?

# Coronavirus spread timeline and area:

  - [outbreak timeline](https://www.aljazeera.com/news/2020/01/timeline-china-coronavirus-spread-200126061554884.html?xif=%20and%20https:/www.aljazeera.com/news/2020/01/cloneofcloneofcloneofchina-battles-coronavirus-o-200129233906291.html)
  - [countries affected](https://www.theguardian.com/science/2020/jan/22/where-has-coronavirus-spread)

# Data and Methods: 
(ref theme analysis in the H1N1 paper, and PMID: 31956275)
Data published from November, 2019 to present (or one or two month after the outbreak waned)

- print news media (big data mining?)
Top newspaper, twitters and youtube (hope to have data of TV content, but seems not easy.)
	* News Media in
		- USA: Associated Press (AP) newswire; U.S. English-language newspapers of top high-circulation; most viewed youtube (and broadcast news transcripts from top networks?).  Lexis-Nexis will be used to collect texts from the first three sources, and the MIT MediaCloud database to collect texts from websites. Texts were collected from both sources using broad search terms \cite{LiuSieg19} ; and [World Journal](https://www.worldjournal.com/)
		- Canada: (similar to USA), and [Sing Tao Daily](https://www.singtao.ca/toronto/?variant=zh-hk)
		- Taiwan: the top x newspapers. https://www.ncl.edu.tw/.
		- Hong Kong: [Epoch Times](https://www.epochtimes.com/gb/news415.htm),
		- China:  [The People’s Daily English](http://en.people.cn/), [The People’s Daily English](http://www.people.com.cn/), [China Daily](http://global.chinadaily.com.cn/)		- Singapore
- social media:	
	*Twitter: Canada, USA, Taiwan, Hong Kong and Singapore (blocked China)
	*YouTube:  Canada, USA, Taiwan, Hong Kong and Singapore
- Science publication: preprint (by searching Google Scholar, arXiv, bioRxiv, medRxiv, and
SSRN) and peer-reviewed (by search Google Schoolar, PubMed, Embase, Medline, and OVID)
- Official health websites:  WHO, [US CDC](https://www.cdc.gov/coronavirus/index.html), [National Health Commission of PRC](http://en.nhc.gov.cn/index.html), [Canada PHAC](https://www.canada.ca/en/public-health/services/diseases/2019-novel-coronavirus-infection.html), [Taiwan CDC](https://www.cdc.gov.tw/En), [Singapore CDC](https://www.ncid.sg/Pages/default.aspx), [Hong Kong CDC]()


Social media in China was not included in this study.  Our main interest is to study how the public react and understand coronavirus in selected countries outside China because . Main newspapers in China and their official health bureau websites are included for analysis but not social media.  First, access to their social media is limited.  Secondly, mass media in China are under government supervision \cite{}


- Coding Guideline:
	* Human Coders and AI (?)
	* key words search for
		- Google trend, and official public health websites: coronavirus, 19-nCov, COVID-19, influenza, 武疫 (Wu Virus)，武漢病毒 (Wuhan Virus)，武漢(Wuhan)，武漢肺炎 (Wuhan pneumonia)，肺炎 (pneumonia)，冠状病毒 (coronavirus), 新型冠状病毒 (novel coronavirus), 武漢新型冠状病毒 (Wuhan novel coronavirus)
		Science publication:  Ro in addition to the terms used to search on Google Trend.
		- News media:  see attached
		- Twitter:
		- YouTube:  
	* [Basic Coding frame](https://github.com/cfshi/coronavirus/blob/master/coding%20book.md) (attached as an appendix) will be based on a pilot study.
		* Theme frame    
		* Who
			- active subject
			- passive subject
		* Where
			- country, region and city
		* information vs. misinformation (news sources):
			- verified
			- anonymous
			- speculation
		* theme tone: negative, positive, neutral

	* Attribute theme weight:  Based on which paragraph key concept (via words) appear.  For example, 3 points to that in the first 3 paragraphs, 2 to 4-6 and 1 to the afterwards.

We will do textual and contextual analyses based on the quantitative results to elaborate how information is framed and disseminated in this uncertain 

-  general public:
	- Data:  travel, [movies](https://www.boxofficemojo.com/?ref_=bo_nb_di_mojologo), restaurants in Taiwan, Singapore, H.K., Canada and USA; or should we focus on North America and on travel and [movie box office](https://www.boxofficemojo.com/?ref_=bo_nb_di_mojologo)?
	- Google Trend
	Research showed that Google Trend can be influenced by the media attraction than by true epidemiological burden \cite{}, yet more evidences suggested that it reflects awareness-related burst of searches \cite{BousAgac17, MahrBrag19}
awareness-related spike of searches
		- e.g. https://trends.google.com/trends/explore?date=today%201-m&geo=SG&q=%2Fm%2F01cpyy,wuhan%20virus,19-nCov,sars,flu ,([export google trend data]( https://support.google.com/trends/answer/4365538?hl=en)
		- Google Trend data can be very confusing, for [example](https://trends.google.com/trends/explore?date=today%201-m&geo=TW&gprop=images&q=coronavirus,sars,%2Fm%2F0l3cy,wuhan%20virus,%E6%AD%A6%E6%BC%A2%E8%82%BA%E7%82%8E)): Why would Wuhan topped coronavirus and 武漢肺炎 in Taiwan?
- science, review of R0 publication from Dec 2019-present 

* modelling:  incorporating media coverage, public and institutional reaction and report (which can be based on modelling results by scientific community and WHO etc), time travelling and spread network (geographical)
  
========

[proposal 5 pages](https://www.researchnet-recherchenet.ca/rnr16/vwOpprtntyDtls.do?prog=3248#howtoapply)
# Abstract (max 2000 characters)

# Summary of Research Proposal (max one page)

# Background
From a mysterious pneumonia-like Wuhan virus in China first reported in December 2019 to coronavirus [19-nCoV](https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200211-sitrep-22-ncov.pdf), a member of coronavirus family \cite{} in January to [COVID-19](https://www.who.int/dg/speeches/detail/who-director-general-s-remarks-at-the-media-briefing-on-2019-ncov-on-11-february-2020), officially renamed in February 11, 2020,  COVID-19 took less than three months to reach over xx countries from Asia, Australia, North America, Europe and Africa, as Egypt reported the first COVID-19 case on Feb 14, 2020 \cite{map}.  On January 30, the World Health Organization declared COVID-19 a public health emergency of international concern. By Feb xx, over 60,000 cased confirmed and  xxx fatality had been documented with —% in China \cite{}.  It has been a short yet long ongoing journey of the disease outbreak, caused the the world unguarded with hazy challenges, fear and anxiety epidemically \cite{}, socially \cite{} , culturally \cite{}, economically \cite{},  and politically \cite{} (cite?) in daily life (e.g., [](to mask or not to mask)(https://www.reuters.com/article/us-china-health-masks-safety/to-mask-or-not-to-mask-confusion-spreads-over-coronavirus-protection-idUSKBN1ZU0PH), 


media



# Aims (to be consistent with potential outcome )
- Potential to contribute to the global response to 2019-nCoV
- Social and policy countermeasures and Global Coordination Mechanism
# Approaches and Plans
	- Methods and Feasibility
	- Data Collection
	- Data Analysis
		- Statistics (and modeling?)
		- Contextual analysis
# Potential Outcomes
# Research Setting and Personnel
# Collaborators and Knowledge Users (Team?)
# Research Timeline
	- year 1
	- year 2  
	- to publish various papers on print (North America, Asia- Taiwan, H.K. and Singapore), social media (twitter), and a grand one
# Challenges and Mitigating Strategies (potential outcome?)
- Potential to contribute to the global response to 2019-nCoV
- Social and policy countermeasures and Global Coordination Mechanism

# Conclusion/Summary
# References

# Appendix:
- [map 1](https://coronavirus.tghn.org/resources-dashboard/case-location-map/), [map 2](https://www.theguardian.com/science/2020/jan/22/where-has-coronavirus-spread), [map 3](https://www.nytimes.com/interactive/2020/world/asia/china-wuhan-coronavirus-maps.html)
- google trend: https://trends.google.com/trends/explore?q=coronavirus (we can play this site by country, search time, online communication, news, etc)

# Reviewers:
- Bogoch Il, Department of Medicine, University of Toronto, Toronto, Canada; and Divisions of General Internal Medicine and Infectious Diseases, University Health Network, Toronto, Canada.
- Fauci AS, National Institute of Allergy and Infectious Diseases, National Institutes of Health, Bethesda, Maryland.
- Horby PW, Centre for Tropical Medicine and Global Health, University of Oxford, Oxford, UK.
- Khan K., Centre for the Mathematical Modelling of Infectious Diseases, London School of Hygiene & Tropical Medicine, London, UK.
- Marston, HD, National Institute of Allergy and Infectious Diseases, National Institutes of Health, Bethesda, Maryland.
- Thomas-Bachli A, Li Ka Shing Knowledge Institute, St. Michael's Hospital, Toronto, Canada; and BlueDot, Toronto, Canada.
- Watts A, Li Ka Shing Knowledge Institute, St. Michael's Hospital, Toronto, Canada; and BlueDot, Toronto, Canada.

# Budget
- For the social and policy countermeasures research, the maximum amount per grant is $500,000 over two years.

=========
# Evaluation Criteria (email this to collaborate with proposal for feedback)
To support the strategic objectives of this funding opportunity, the following evaluation criteria will be used:
	1.	Quality of project:
	a.	Extent to which the application responds to the objectives;
	b.	Appropriateness of the proposed approach; and
	c.	Appropriateness of the budget and justification for amount requested.
	2.	Quality of Applicants:
	a.	Track record of team members in fields related of proposed research;
	b.	Ability of the project team to carry out the proposed research; and
	c.	Ability of team to quickly mobilize necessary resources.
	3.	Impact of the Research:
	a.	Alignment to research areas;
	b.	Potential to contribute to the global response to 2019-nCoV.

