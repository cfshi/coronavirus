
# Special coronavirus call: https://cihr-irsc.gc.ca/e/51868.html (due Feb 17!!!)

- Social and policy countermeasures research:
- Cultural dimensions of the epidemic such as, examining how individuals and communities understand and react to the disease;
- Studying the public health response;
- Developing strategies to combat misinformation, stigma, and fear;
- Studying logistical (e.g., infrastructure, transport, evacuation) and economic impacts;
- Studying international relations, global coordination, response systems and crisis management; and
- Considering the social dynamics of transmission.

=========

# Title
Mapping 2020 novel Coronavirus (19-nCoV) outbreak trend: media coverage and public and national and international reaction and guidelines
(It's very brief.  (I would like to have modelling ideas in this project but WHAT???  Also, how workable is it to compare this coronavirus to 2012 MERS and 2002 SARS in terms of the spread and reaction context (media coverage, public and institutional reaction and modelling prediction?)

# Working Time Table

Is context same as noise in modelling (e.g., Park and Dushoff 2020):  dynamical or process; noise(randomness directly or indirectly affecting disease transmission); observation noise(randomness underlying how many true cases reported).  Based on their definition, how do context or media, public reaction and pubic policy-guideline fit into models?  Is it a right question?

# Team:
- Jonathan Dushoff
- Rachel Zhou
- 葉蓉慧http://shucidi.mystrikingly.com/blog/51e97b5d10a?fbclid=IwAR0QBxowp3BIxLbN9E8eXx5_bRcpBewq-ctsxHModjfLWZxUxQzk64SCCnE
- David Earn?
- Chng Nai Rei?
- Chyun Shi

# Research Questions:

To study the following factors and incorporate them all in a model to map a transmission route/pattern of infectious disease (19-nCov/Wuhan virus in this case): media (mass and social) coverage, public (from media content, or?)reaction, institutional decision (governments and WHO etc) and transmission speed/region/scales.   

Regarding spreading route, e.g., from Wuhan to Taipei:  flight route, how many people got infected and whom they contacted.  We will need data from governments (e.g., Taiwan CDC)

Regarding media content, we may do data mining to collect media content from big data base and do data mining (or not?).
WHO reaction was politicalized.  The chairman, who is Ethiopia, first commented that China was efficient and did a good job curtailing the virus; that was different from common belief.  Did the WHO's position delay the world's reaction to the virus?

"This case report highlights the importance of clinicians eliciting a recent history of travel or exposure to sick contacts in any patient presenting for medical care with acute illness symptoms, in order to ensure appropriate identification and prompt isolation of patients who may be at risk for 2019-nCoV infection and to help reduce further transmission. Finally, this report highlights the need to determine the full spectrum and natural history of clinical disease, pathogenesis, and duration of viral shedding associated with 2019-nCoV infection to inform clinical management and public health decision making." \cite{HolsDebo20}

The questions are tentative and brief.  One main challenge is how to combine J's expertise and mine.  I.e., media analysis, media impacts, public reaction, policy update and disease transmission pattern/route.  

## How media coverage, public reaction, health institutes interplay the coronavirus spread?
	 1. How does the media (mass and social) cover the virus? (i.e., analysis of cultural dimensions of the epidemic and public health response)
		* We will need to work on theme for content analysis, either quantitative (via computer) or qualitative
		* Media content can present a picture of what was communicated among the public, the government and the international communities.  It gives story of what was the virus like and how it was perceived.

	2. How does the general public understand and react to the virus (analyzing google trends data and media content)? (i.e., Study of the public health response)
		* We will use google trend (by countries, time and categories) and the daily infected cases and fatality (via WHO?) and study the correlation of the two patterns.

	3. How does the national and international community react to the virus spread and with what guidelines (analyzing official websites, such as WHO, CDC, Chinese Center for Disease Control and Prevention, etc) (i.e., analysis of social and policy countermeasures)
## How policy correlate with health behavior in contributing/reducing/avoiding the infection?
		* This is important.  We will compare what policies imposed by selected countries  to contain and prevent the spread of the infection and its progress.  This will allow us to propose recommendation for future outbreak (or even this one).
		* We will go to official website (also media content?) such as WHO, US CDC etc for information.
		* Although WHO position in the beginning of the virus spread was questioned (https://www.washingtonpost.com/world/asia_pacific/chinese-officials-note-serious-problems-in-coronavirus-response-the-world-health-organization-keeps-praising-them/2020/02/08/b663dd7c-4834-11ea-91ab-ce439aa5c7c1_story.html) , how to interpret WHO information and recommendation	need to be cautious.  So what does it mean?  How do we use their info?

We will further analyze correlation of the three sources.

- media report
- cases:  by countries, region
- policy:  quarantine, flight control, boarder control, hospital preparation, sources distribution (mask etc)
- WHO position:  from day 1 till now
- economic impact (maybe not this one)
Based on our findings to propose for preparation and recommendation for future outbreak (or even this 19-nCov)

# Coronavirus spread timeline and area:

  - timeline: https://www.aljazeera.com/news/2020/01/timeline-china-coronavirus-spread-200126061554884.html and https://www.aljazeera.com/news/2020/01/cloneofcloneofcloneofchina-battles-coronavirus-o-200129233906291.html
  - area: https://www.theguardian.com/science/2020/jan/22/where-has-coronavirus-spread

# Coronavirus death tolls timeline

# Data and Sources
	* Official: 
		— WHO, CDC etc
			- https://www.cdc.gov/coronavirus/index.html

	* media
	* general public:
		— Google Trend 
			- e.g. https://trends.google.com/trends/explore?date=today%201-m&geo=SG&q=%2Fm%2F01cpyy,wuhan%20virus,19-nCov,sars,flu ,(export google trend data: https://support.google.com/trends/answer/4365538?hl=en )
		— https://isaric.tghn.org/articles/new-pop-coronavirus-knowledge-hub-global-health-network/
    		— https://coronavirus.tghn.org/resources-dashboard/case-location-map/
  		— figures:  google trend search, Topsy or similar data search
	
	how do we collect public data in China (We Chat or?)

* Articles:

  - Pandemic flu (2018) https://jamanetwork.com/journals/jama/fullarticle/2705303
  - MERS.  Social Big Data Analysis of Information Spread https://www.ncbi.nlm.nih.gov/pubmed/28051336

# Collaborators
- China
- Taiwan (Do we need Taiwan if based on infected cases by country?  Taiwan was expected to be a heavily infected country but not due to its public health emergency system)
- H.K.
- Singapore
- England (Chng Nai Rui)
- USA
- Canada:  we need someone with epidemiology background

# Method (ref theme analysis in the H1N1 paper, and PMID: 31956275)
* big data mining for media?
  - twitter:  using "Using Twitter search network API, tweets with "flu" keyword were collected and tabulated. Network centralities were calculated with network analysis tool, NodeXL. The collected Twitters accounts were content analyzed and categorized by multiple coders." (https://www.ncbi.nlm.nih.gov/pubmed/27185510, YunMori16)
  
  - Popular data sources included Twitter, Reddit, various online health communities, and Facebook.
  
  - https://www.ncbi.nlm.nih.gov/pubmed/31329985 (Twitter)
  
  - https://www.ncbi.nlm.nih.gov/pubmed/30923270 Managing Influenza Outbreaks Through Social Interaction on Social Media: Research Transformation Through an Engaged Scholarship Approach. (BunkEhni19)

＊search key words: coronavirus, 19-nCov, COVID-19, influenza, 武疫，武漢病毒，武漢，武漢肺炎，肺炎，新型冠状病毒, 武漢新型冠状病毒

* theme of analysis (which should be based on a pilot study?):  
	- resources: face mask, vaccine, quarantine, flight, death toll, politics, 
	- health concern and treatment:
	- human relations (humanity):  family, friends, community (e.g., how they support each other or fight for resources) in supermarket, neighbourhood, online support or in a cruise, etc
	- policy and action:  quarantine, grounding flights, entry to countries, evacuation out of China (https://www.reuters.com/article/us-china-health-masks-safety/to-mask-or-not-to-mask-confusion-spreads-over-coronavirus-protection-idUSKBN1ZU0PH)
	- guidance:  how to wear face mask,  travel recommondation,  
	- flu symptom:
	- coronavirus characteristics: what it is and compared to other diseases
	- fear and stigma: (e.g., https://www.nytimes.com/2020/02/12/world/asia/china-coronavirus-korea-discrimination.html?action=click&module=Top%20Stories&pgtype=Homepage)
	- conspiracy theory:  e.g., P4 lab in Wuhan
	- fatality and infected cases:
	- sanction of information about the disease inside China (e.g., https://www.washingtonpost.com/world/2020/02/04/chinese-doctor-has-coronavirus/)
	- distrust:  among people, communities, countries etc
	- economic impact
* How do we attribute theme weight?  Based on which paragraph key concept (via words) appear.  For example, 3 points to that in the first 3 paragraphs, 2 to 4-6 and 1 to the afterwards.

* We will do a contextual analysis based on the (semi) quantitative findings.

* modelling:  incorporating media coverage, public and institutional reaction and report (which can be based on modelling results by scientific community and WHO etc), time travelling and spread network (geographical)
  

  
# Background:
China alerted WHO on December 31, 2019 to several cases of pneumonia in Wuhan, a port city of 11 million people in the central Hubei province. The virus was unknown.
On January 7th, according to the WHO, China announced they had identified a new virus named 2019-nCoV or novel coronavirus, identified as belonging to the coronavirus family, which includes SARS and common cold. It originates from mammals and attacks the respiratory system, and individuals affected can feel symptoms from mild cold to severe disease and death.  “Coronaviruses spread through being in proximity to an infected person and inhaling droplets generated 
when they cough or sneeze, or touching a surface where these droplets land and then touching one's face or nose."  The first death was announced on January 11th in Chia.
Since then, the virus was reported in Thailand, Japan, Singapore, Taiwan, Philippine, United States, Germany and many other countries (up to xx at the writing)
By February 9th, the death toll reached to over 800 cases, passed the fatality caused by 2002-3 SARS.  There were xxx confirmed cases and d xxx death in worldwide (cite) and xxx and xxx respectively in China (http://www.nhc.gov.cn/xcs/yqtb/202002/4a611bc7fa20411f8ba1c8084426c0d4.shtml,) by Feb xx.  Five million people left Wuhan before the city shut down (https://www.businessinsider.com/wuhan-coronavirus-officials-quarantine-entire-city-2020-10 ).  One of the challenges in containing the outbreak is that a substantial fraction of infected people show only mild symptoms (https://www.businessinsider.com/wuhan-coronavirus-officials-quarantine-entire-city-2020-1)


# Literature Review:
- Studies about coronavirus
- media and SARS
- how SARS was contained (in affected countries)
- how WHO dealt with SARS

# Data and sources:
Top newspaper, twitters and youtube.
* Media in USA: 

Associated Press (AP) newswire; U.S. English-language newspapers of top x high-circulation; the 50 most popular websites among the 12–17 and/or 18–24 age groups for each quarter, according to Nielsen ratings; and broadcast news transcripts from top networks.  Lexis-Nexis was used to collect texts from the first three sources, and the MIT MediaCloud database was used to collect texts from websites. Texts were collected from both sources using 12 broad search terms \cite{LiuSieg19}

* Media in Canada:
* Media in Taiwan: https://www.ncl.edu.tw/.
* Media in Hong Kong
* Media in China
* Media in Singapore

# Methods
# Timeline
# Expected Results and Contribution

# Appendix:
- map: https://coronavirus.tghn.org/resources-dashboard/case-location-map/
- google trend: https://trends.google.com/trends/explore?q=coronavirus (we can play this site by country, search time, online communication, news, etc)

# Reviewers:
- Bogoch Il, Department of Medicine, University of Toronto, Toronto, Canada; and Divisions of General Internal Medicine and Infectious Diseases, University Health Network, Toronto, Canada.
- Fauci AS, National Institute of Allergy and Infectious Diseases, National Institutes of Health, Bethesda, Maryland.
- Horby PW, Centre for Tropical Medicine and Global Health, University of Oxford, Oxford, UK.
- Khan K., Centre for the Mathematical Modelling of Infectious Diseases, London School of Hygiene & Tropical Medicine, London, UK.
- Marston, HD, National Institute of Allergy and Infectious Diseases, National Institutes of Health, Bethesda, Maryland.
- Thomas-Bachli A, Li Ka Shing Knowledge Institute, St. Michael's Hospital, Toronto, Canada; and BlueDot, Toronto, Canada.
- Watts A, Li Ka Shing Knowledge Institute, St. Michael's Hospital, Toronto, Canada; and BlueDot, Toronto, Canada.
