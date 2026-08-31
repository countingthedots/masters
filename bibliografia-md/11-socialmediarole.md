# **Dynamic Signal Effects: The Role of Social Media in Box Office** **Prediction**



[Jinhan Shi](https://orcid.org/0009-0006-5165-8517)
Shanghai University
SILC Business School

Shanghai, China
jinhanshi@shu.edu.cn



[Haodong Gu](https://orcid.org/0000-0003-2109-5021)
Shanghai University
SILC Business School

Shanghai, China
guhaodong@shu.edu.cn



[Aixin Chen](https://orcid.org/0009-0001-8743-8851) [∗]


Shanghai University
SILC Business School

Shanghai, China
chenaixin@shu.edu.cn



**Abstract**


With the increasing importance of social media in the film industry
for box office prediction and promotional strategy formulation, this
study employs signaling theory and social influence theory to explore its role in box office performance. Leveraging web crawling
technology by Python, this study collected data from multiple social
media platforms, extracting film-related signals such as information
volume, platform ratings, and comprehensive heat index. Using
SPSS software for multiple linear regression analysis, an empirical
study was conducted on 256 Chinese films released between 20182022 with box office revenues exceeding one million yuan. The
results demonstrate that incorporating social media indicators significantly enhances the explanatory power of the prediction model.
Specifically, the volume of information, platform ratings, and comprehensive heat index positively influence box office revenue. This
research integrates computer-aided data collection and statistical
analysis methods, providing both theoretical contributions to signaling theory and practical insights for the film industry’s digital
transformation.


**CCS Concepts**


- **Applied computing** → Law, social and behavioral sciences;

Economics.


**Keywords**

Box office, social media, box office prediction, signaling theory


**ACM Reference Format:**
Jinhan Shi, Haodong Gu, and Aixin Chen. 2025. Dynamic Signal Effects:
The Role of Social Media in Box Office Prediction. In _2025 2nd International_
_Conference on Digital Society and Artificial Intelligence (DSAI 2025), May_
_23–25, 2025, Wuhan, China._ [ACM, New York, NY, USA, 10 pages. https:](https://doi.org/10.1145/3748825.3748971)
[//doi.org/10.1145/3748825.3748971](https://doi.org/10.1145/3748825.3748971)


**1** **Introduction**


In the digital era, social media has emerged as a pivotal force in
shaping consumer behavior and influencing market outcomes, particularly in the film industry where box office performance is critical
to commercial success. As an experiential product, films face significant information asymmetry before release, which is the situation


∗ Corresponding author.


[This work is licensed under a Creative Commons Attribution 4.0 International License.](https://creativecommons.org/licenses/by/4.0)
_DSAI 2025, Wuhan, China_
© 2025 Copyright held by the owner/author(s).
ACM ISBN 979-8-4007-1433-7/2025/05
[https://doi.org/10.1145/3748825.3748971](https://doi.org/10.1145/3748825.3748971)


948



in which one party has less information than the other in a transaction as audiences rely on pre-release signals to gauge quality and
decide whether to watch [ 1, 2 ]. Traditional signals, such as director reputation or star power, have long been studied, but the rise
of social media has introduced a new paradigm of dynamic, usergenerated signals that can rapidly spread and amplify consumer
sentiment [ 3 ]. Identifying these market signals is crucial for box
office research. For instance, the Chinese New Year film _NE ZHA 2_
surpassed 15.7 billion yuan, ranking 5th on the list of Worldwide
Box Office Ranking at the end of April 2025. The growth of the
film industry is closely tied to social media signals. From a marketing perspective, _NE ZHA 2_ exemplifies how modern promotional
strategies—such as leveraging social media or shaping electronic
word-of-mouth (eWOM) to influence audience perceptions and
viewing decisions—have become indispensable in contemporary
film marketing.
Currently, the film industry has transitioned from traditional
marketing models to the digital marketing era. Social media, as
a new digital channel, has become one of the key indicators influencing audience movie decisions and box office predictions [ 4 ].
However, despite the growing recognition of social media’s role,
existing research has primarily focused on text mining or sentiment
analysis, often neglecting the dynamic interplay between different
social media signals and their cumulative impact on box office revenue [ 5, 6 ]. While studies have shown that user reviews and trailer
views correlate with box office performance [ 7 ], the mechanisms
through which these signals interact and evolve over time remain
under explored. Moreover, research on predicting box office performance by tracking movie-related information on social media
remains insufficient, which can significantly influence audience
perception and drive last-minute decisions, which are pivotal for
opening-week performance and long-term success [8].
In order to better promote the sustainable development of the
film economy, an important approach is to accurately predict box
office performance. Thus, the purpose of this study is to investigate
the dynamic signal effects of social media in box office prediction,
focusing on how three key dimensions—volume of information,
platform ratings, and comprehensive heat index—influence box
office revenues. By integrating insights from signaling theory and
social influence theory, we aim to uncover how these signals collectively mitigate information asymmetry and drive audience behavior.
The following sections will review relevant literature on movie box
office predicting, its technical approaches, and the moderating roles
of affective congruence and topic consistency. The research hypotheses will then be proposed, followed by an explanation of the


DSAI 2025, May 23–25, 2025, Wuhan, China Jinhan Shi et al.



materials and method, the results, and a discussion of the study’s
implications.


**2** **Literature Review**
**2.1** **Signaling Theory**


Signaling theory is particularly useful for analysing consumers,
who are often in an information asymmetry position in the market

[ 9 ]. In such situations, consumers are unable to directly assess
the quality of a product, so they rely on the signals they receive
from the market to gauge product quality. Information asymmetry
leads consumers to lack concrete perceptions when facing products
and services they have not experienced, thereby affecting their
willingness to purchase. In the context of film signalling theory, information asymmetry is a fundamental issue for choosing whether
to watch the movie or not. Stiglitz [ 10 ] emphasized two types of information asymmetry: quality information and intent information.
The former involves one party’s ignorance about the attributes and
features of the other party, while the latter pertains to the lack of
understanding regarding the behaviour and intentions of the other
party. Firstly, research found that consumers use other indicators
within products and services, such as brand and performance, as
well as status signals, to assess quality [ 11 ]. Advertising and recommended prices can serve as indirect quality signals for emerging
consumer goods [ 12 ]. Furthermore, when consumers lack sufficient
information, they use brand signals to infer the quality attributes of
products, thereby positioning and evaluating them. The credibility
of brand signals is positively correlated with consumers’ perceptions of product quality; the more credible the signal, the better the
consumer’s perception of quality.
In addition to traditional signals such as price and brand advertising, there are a variety of signals in the online environment
that convey product quality, with word-of-mouth (WOM) being
one of the most important. Liu [ 13 ] proposed that electronic wordof-mouth (eWOM) is a collective reputation signal, becoming the
preferred source for consumers seeking purchase experience information. Consumer purchase decisions are influenced by two
types of social signals: one being the purchasing behaviour of peer
consumers, and the other being their reviews [ 14 ]. Among these
signals, peer reviews are usually defined as eWOM, which plays a
key role in the decision-making process of consumers [15].


**2.2** **Social Influence**

Social influence is defined as “the changes in an individual’s
thoughts, emotions, attitudes or behaviors resulting from interaction with others or groups” [ 16, 17 ]. Social influence theory (SIT)
posits that individuals’ behavior is shaped by the real or imagined
influence of others [ 18 ]. In the context of movie box office prediction, this theory provides a crucial framework for understanding
how social media signals impact audience decisions. Research has
shown that social influence significantly affects consumer choices,
and in the movie - watching context, it plays a pivotal role in determining box office success [19].
Social influence describes the phenomenon of individual belief,
attitude, emotion, or behaviour change under the influence of social forces [ 20 ]. These social forces can originate from individuals
or groups. First, social influence can lead to conformity behavior,


949



where an individual changes their original stance or behaviour
under the influence of others to align with the group’s behaviour.
Deutsch [ 18 ] noted that individuals use information from others
as real evidence, thus enhancing their understanding of the environment and their ability to respond to specific situations. Second,
informational social influence can occur in two ways: 1) individuals acquire information and knowledge from others; 2) they make
judgments by observing others’ behaviours [ 21 ]. This type of influence is particularly evident in consumers’ product evaluation
and purchasing decisions. Kim [ 22 ] argued that this is essentially a
learning process, where consumers in the online environment observe the experiences of other buyers to decide whether to purchase
a product.
In the context of digital marketing, SIT has been used to explain
user behavior on social media platforms [ 23 ]; and the attitudinal
and behavioural implications of online influencer marketing [ 24 ].
With the widespread use of the internet, eWOM and similar informational influences play a crucial role in shaping and guiding
consumer behaviour. Numerous empirical studies indicate that
persuasive information like eWOM can have a significant impact
on individuals’ behaviour, even triggering behavioural changes

[ 25, 26 ]. Compared to the past, when social circles were smaller
and social influences were more limited, the internet has vastly expanded the range of social influence through social media, allowing
an individual’s influence to spread more widely. Social influence
not only helps build a product’s reputation but also deeply impacts
the recommendation process, thereby affecting consumers’ trust

[27].


**2.3** **Social Media and Movie Box Office**
**Prediction**


Social media has increasingly played a critical role in the movie
production process, especially in box office forecasting. Movie box
office performance is a crucial indicator of a film’s commercial
success, and accurately predicting it can help stakeholders in the
film industry make informed decisions. Accurate movie box office
forecasting is critical for industry stakeholders, yet existing research
faces challenges in prediction accuracy and data complexity. Early
studies using neural networks incorporated factors like star power
and ratings but achieved limited accuracy due to simplistic models
and narrow data scope [ 28 ]. Later work, such as Barman [ 29 ]
highlighted the role of complex interfering factors—like piracy

[ 30 ], which reduces theater demand—but noted scalability issues
in real-world applications. These limitations stem from flawed data
acquisition, over-simplified models, and inadequate consideration
of interactive variables.

Many studies focus on extracting various signals from social
media to predict movie box office performance. Forecasting methods broadly fall into two categories: statistical models and machine learning. Methods based on statistical models, like regression
and time series models, face challenges such as assuming linear
relationships or relying too much on historical data. Although
machine learning and deep-learning are applied [ 31, 32 ], the empirical research is still insufficient [ 32, 33 ]. Statistical approaches,
such as regression and time-series analysis, rely on historical data
but are constrained by linearity assumptions and narrow scope


Dynamic Signal Effects: The Role of Social Media in Box Office Prediction DSAI 2025, May 23–25, 2025, Wuhan, China




[ 34, 35 ]. Others evaluate film efficiency by Data Envelopment
Analysis (DEA) [ 36 ]. Machine learning methods, including neural
networks and support vector machines, excel at capturing complex
relationships but often underutilize comprehensive data, limiting
precision despite promising potential. Some research applied data
or text mining tools, and big data, combining multi-source social
media and web data like IMDb movie databases, to extract decision
factors like film genres, director and follower counts [ 5, 6, 37 ], others combined movie sentiment analysis [ 37 - 39 ]. Researchers have
predominantly used data from single social media platforms such as
Twitter [ 39 ], Facebook, or Microblogs [ 2, 37, 40 ]. Existing research
on movie box office forecasting has limitations in data acquisition,
prediction accuracy, and limited platforms [ 40, 41 ]. In summary, the
analysis and mining of social media data have become an essential
method for forecasting movie box office performance. This not only
helps film production companies develop more effective market
strategies but also provides audiences with a more personalized
viewing experience.
Existing studies have examined the role of social media in predicting movie box office performance from various perspectives,
covering prediction methods. However, there are still some issues
that require further research. For instance, most studies are based
on data from specific regions or time periods, and the universality
of their results needs verification; when considering social media
signals, the study of synergistic effects among different platforms
is insufficient; and further exploration is needed on how to better
integrate multiple influencing factors to improve the accuracy of
box office predictions. In box office forecasting research, the selection and analysis of movie signals are crucial. Based on the factors
mentioned in existing literature, we can summarize box office prediction research into three main aspects. First, directly using box
office revenue as a forecasting indicator, such as predicting future
box office performance based on a movie’s first-day or first-week
performance. Second, focusing on internal movie signals, such as
the cast, director, plot, story content, and ticket prices, to predict
the overall box office performance. Finally, considering external
signals, especially social media information such as reviews, likes,
and sentiment in tweets, which provide additional perspectives for
box office forecasting. Introducing external signals from social media in the research process can enhance the explanatory power of
forecasting models and analytical processes. Therefore, this paper
will focus on the application of social media indicators, as external
signals, in box office forecasting based on signal theory.


**3** **Hypotheses**


Social media has become one of the most important channels for
promoting and marketing movies. The volume of information on
social media, which comes from official data sets on social media
platforms, effectively expands a movie’s audience, increases its
exposure, and reflects feedback from social media on the movie.
Movie-related information released on official social media platforms, such as likes, shares, and views, can rapidly spread across
cyberspace [ 42 ]. This provides valuable reference information for
assessing the movie’s performance in the market. Before making
a purchase decision, consumers often search for relevant product


950



information. During this process, consumers can receive movie signals from official sources, which profoundly influence their movie
perception. Combined with social influence theory, information
from highly credible sources has a more significant impact on consumer behaviour and attitudes [ 43 ]. When consumers receive substantial official feedback from trusted social media platforms, it
is likely to influence their ticket-buying decisions. Abundant social media-related information can attract more attention to the
movie, guide the public’s views, and increase box-office performance. The related videos received a large number of likes and
shares on platforms such as Weibo and WeChat. After encountering this information, many social media users were eager to
purchase tickets, which led to a dramatic increase in the film’s box
office performance, demonstrating the powerful impact of official
social media information on movie box office success. If a movie
has abundant social media-related information, the movie enjoys
widespread audience awareness and intense topic discussion on
social media platforms. This is likely to attract more attention to
the movie. Therefore, the information disseminated via social media has the potential to guide the public in forming specific views
about the movie and sparking interest. When a large volume of
positive information about a movie emerges on social media, it is
likely to motivate more users to develop an interest in watching
the film, thereby driving an increase in box office performance and
enhancing the movie’s commercial competitiveness and influence.
Therefore, we hypothesize the following:
**Hypothesis 1 (H1):** The volume of information about a movie
on social media positively influences its box office revenue.
In today’s world, movie ratings on social media platforms have
become an extremely important evaluation criterion in modern
culture. With the ongoing evolution and maturation of social media,
people are increasingly accustomed to exploring, interacting, and
sharing various types of information on these platforms. Platform
ratings as a key indicator that is likely to have a significant impact
on movie box office performance. Platform ratings are a specific
form of eWOM and are highly persuasive [ 26, 44 ]. Compared to
analysing the positive and negative emotional effects in online
reviews, movie ratings are easier to collect and come with clear
standards for measurement, which makes them a commonly used
indicator for assessing movie word-of-mouth in various studies.
Platform ratings come from the movie’s audience, i.e., the vast
number of movie consumers or platform users, and they accurately
reflect these audiences’ direct impressions of the movie, which
can influence the ticket-buying decisions of potential viewers. The
relationship between online ratings, movie revenues, and viewer
satisfaction are verified as a U sharp [ 45 ]. While some scholars
have studied movie ratings on social media, most are based on data
from a single social media platform or single type of rating (Rated
R) [ 46 ], leading to considerable discrepancies in their conclusions.
By selecting rating data from multiple social media platforms and
integrating them into a platform rating, the influence mechanism
between ratings and box office performance. Platform ratings are
derived from actual viewing experiences and reviews from the
audience, and whether they show a positive or negative trend will
influence the choices and decisions of other potential viewers, thus
affecting the movie choice and revenue. Therefore, we hypothesize
the following:


DSAI 2025, May 23–25, 2025, Wuhan, China Jinhan Shi et al.



**Figure 1: The conceptual model of this study.**


**Hypothesis 2 (H2):** The platform ratings of a movie on social
media positively influence its box office revenue.
With the rapid development of online social media, people are
increasingly inclined to use various channels to obtain the latest movie information, related reviews, and actively participate
in interactions. The data recorded from these interactions often
deeply reflect the audience’s preferences and expectations for the
movie. Social media’s proliferation has amplified film-related information consumption on platforms like IMDb and YouTube [ 47, 48 ].
Drawing from signal theory, active information-seeking behaviors
expose consumers to relevant cues, thereby facilitating information
dissemination and reducing purchase uncertainty [ 49 ]. The comprehensive heat index combines various indicators such as trailer
heat, “want-to-see” heat, media heat, Weibo heat, WeChat heat, and
search index through specific calculation methods. The integrated
heat index comprehensively reflects the overall movie signals across
different social media platforms and objectively evaluates the attitudes and confidence levels of these platforms by summarizing
multi-channel heat to accurately show the movie’s attention and
discussion levels. The heat displayed by the movie on social media
platforms highlights its influence within a specific range and also
exerts a certain degree of impact on box office performance. Some
indicators in the integrated heat index reflect the strong intention
of users to actively search for and express their interest in watching
the movie. The hotter the interest, the higher the corresponding
heat, which also indicates a stronger demand for the movie. Additionally, the integrated heat index provides an intuitive reflection
of the audience’s strong interest and eager anticipation for the
film. Therefore, the comprehensive heat index not only reflects
the movie’s exposure level and user attention but also embodies
people’s demand preferences and feedback, thus exerting a significant influence on the film’s box office performance. Therefore, we
hypothesize the following:
**Hypothesis 3 (H3):** The comprehensive heat index of a movie
on social media positively influences its box office revenue.


**4** **Materials and Methods**

**4.1** **Research Framework**


Based on the hypotheses below, Figure 1 shows the conceptual
model of our study.


**4.2** **Sample Selection and Data Collection**

This study collected domestic box office data for films released
in China from 2018 to 2022, sourced from Box Office Mojo, and
selected 256 films that achieved box office earnings of over one
million RMB. These films were used to construct the data sample


951



for in-depth analysis. As a globally recognized box office statistics website, Box Office Mojo provided key data support for this
research. The five-year period (2018-2022) was strategically chosen
to capture the dynamic characteristics of the current film market,
which ensures that the research findings are more aligned with
contemporary market trends. This period aligns with the rapid pace
of digital transformation in China’s film industry. Social media platforms (such as Douban and Weibo) have experienced exponential
user growth, while streaming services (such as Bilibili and Tencent Video) have begun to exert significant influence on theatrical
release strategies. Meanwhile, the selected time frame includes a
critical market inflection point—the COVID-19 pandemic (2020),
which reshaped audience behavior and distribution models. The
pandemic accelerated the shift of films toward online promotion.
Therefore, this period is well-suited for exploring the impact of
social media on film box office performance while reflecting future
trends, demonstrating strong practical significance. The selection
of films with box office earnings above one million RMB was made
because such films tend to attract larger audiences and exert a
broader market influence. Analysing these films provides more representative and reliable data samples, forming a solid foundation
for exploring trends in film-related indicators and identifying key
factors affecting box office performance.
In this study, web crawling technology was primarily employed
for data collection by Python, which involves using automated programs to simulate human browsing behavior and extract publicly
available data from the internet. It enables the efficient acquisition
of information dispersed across diverse platforms, making it particularly suitable for research requiring large-scale, structured data
support, such as social media analysis and industry trend insights.
The relevant variables in this study were mainly derived from
publicly available data from major official websites, including Box
Office Mojo, Weibo, WeChat, Bilibili, Douyin, Douban, Taopiaopiao,
Maoyan, Lighthouse Professional Edition, and Baidu. Specifically,
data were collected on Weibo’s likes, shares, comments, and topic
discussions, as well as the number of followers for official accounts,
actors, and promotional song artists. WeChat data included the
reading volumes of official movie accounts. Bilibili data focused on
view counts, while Douyin provided data on topic playback volumes.
Rating data were obtained from Douban and Taopiaopiao, while
Maoyan provided detailed box office data, ticket prices, production
companies, and distribution companies, along with information on
movie length, showtimes, and historical box office performance of
actors, directors, and screenwriters. The Lighthouse Professional
Edition provided the Popcorn Index, and Baidu data included basic
information about actors, directors, and screenwriters such as their
gender, age, filmography, and awards, as well as Baidu Index data.
For data with large values, such as box office earnings, production
and distribution company earnings, opening week showtimes, and
the number of followers for promotional song artists, logarithmic
transformations were applied to reduce large disparities in data,
thereby improving the accuracy and scientific rigor of the analysis.
The volume of information, platform ratings, and data related to
actors, directors, and screenwriters were subjected to factor analysis
for dimensionality reduction, yielding more representative and
comprehensive variables.


Dynamic Signal Effects: The Role of Social Media in Box Office Prediction DSAI 2025, May 23–25, 2025, Wuhan, China



**4.3** **Variable Measurement**


In this study, the dependent variable was defined as the box office
revenue, which refers to the total accumulated box office revenue
during their release period. This indicator directly reflects the overall commercial performance of the films. Typically, the higher the
box office earnings, the more viewers chose to watch the film, implying greater audience recognition and favourability, and demonstrating its commercial value. For the purpose of this study, the
box office earnings were subjected to logarithmic transformation to
enhance the precision and scientific rigor of subsequent analysis.


_4.3.1_ _Volume of Information._ Weibo, WeChat, Bilibili, and Douyin
all have large user bases and broad audience reach. As major social
media platforms, they provide highly credible and authoritative
content. Therefore, this study performed factor analysis for dimensionality reduction on the information volume of films in their first
week of release across these four platforms and presented the results as a composite “volume of information” indicator. Specifically,
Weibo’s information volume was derived through factor analysis
of the official account’s followers, likes, shares, topic readings, and
discussions, which capture various forms of film-related Weibo
content. Bilibili’s information volume was based on the top three
films by view count, while WeChat’s information volume was derived from the top three films by official account reading volume,
and Douyin’s information volume was directly obtained from topic
playback volume. These four types of data mostly stem from official
guidance and promotion, accurately reflecting the film’s popularity
and the sustainability of its spread across social media platforms. In
essence, the independent variable of volume of information effectively captures the feedback signals from social media, providing a
crucial basis for exploring the relationship between films and social
media.


_4.3.2_ _Platform Ratings._ This study selected the first-week ratings
from Maoyan, Taopiaopiao, and Douban as the key indicators
for the independent variable of platform ratings. Maoyan and
Taopiaopiao are the two largest online ticket platforms in China,
while Douban is a highly influential fan community and film database in the country. Other rating platforms were excluded due to
issues such as foreign user ratings, incomplete data due to copyright restrictions, and small user bases. The ratings from Maoyan,
Taopiaopiao, and Douban collectively provide a comprehensive
view of social media platform ratings. All three platforms use a
ten-point rating system, combining user ratings with professional
reviews. These ratings accurately reflect the film’s quality and popularity from the social media user perspective. In this study, the
first-week ratings were selected, as they are more likely to influence
potential viewers’ movie selection and ticket purchasing decisions.
Ratings obtained after the film has been off-screen may not be as
impactful for driving box office performance. Therefore, the firstweek ratings were chosen to explore their intrinsic relationship
with box office earnings.


_4.3.3_ _Comprehensive Heat Index._ In this study, the Popcorn Index
is used to measure the comprehensive heat index. The Popcorn
Index is a more comprehensive indicator that integrates data from
authoritative platforms through detailed analysis. Specifically, the
Lighthouse Professional Edition calculates this index by assigning


952



weights to various internal data sources, including news media,
Weibo, WeChat, “want-to-see” heat, trailer heat, search heat, etc.
The resulting index offers a thorough presentation of the film’s exposure and audience attention across multiple platforms, providing
a key quantifiable basis for studying a film’s market performance
and influence. The Popcorn Index helps analyse the relationship
between the film’s popularity and other key factors, including box
office earnings.


_4.3.4_ _Control Variables._ To improve the accuracy and reliability of
the results and clearly illustrate the influence and mechanism of
social media on box office performance, control variables were introduced. These variables stem from key signals associated with the
film itself. The study selected ten control variables: price, production company, distribution company, film length, prequels, openingweek showtimes, music, lead actors, directors, and screenwriters.
Specifically, the average ticket price refers to the average price
during the film’s release period. For production and distribution
companies, the logarithm of the total box office earnings of films
produced and distributed by these companies before the current
film was used. Film length was determined based on the movie’s
runtime. The prequel variable is coded as 1 if the film is a sequel
or has a prequel, and 0 if not. The opening-week showtimes were
transformed using logarithms. The music variable was calculated as
the logarithm of the promotional song artist’s followers on Weibo.
For the lead actors, directors, and screenwriters, various relevant
metrics were selected, and factor analysis was used for dimensionality reduction to create a composite measure.


_4.3.5_ _Variable Summary._ The names, detailed descriptions, and
data sources of variables in this study are summarized in Table 1.
Due to the substantial differences in magnitude between the variables of movie box office revenue, producer, distributor, openingweek showtimes, and movie theme song compared to other variables, it is necessary to preprocess these data prior to conducting
correlation tests and multiple linear regression analyses. This study
employs logarithmic transformation to modify the original values
to meet the requirements of the analysis. By applying natural logarithm transformation, the range of the variables is appropriately
reduced without affecting the recognizability and interpretability of
their fundamental relationships. Additionally, because the variables
of volume of information, platform ratings, lead actor, director, and
screenwriter contain numerous similar feature indicators, factor
analysis is required for these types of data. Factor analysis is utilized to eliminate redundant features, reduce errors, improve data
quality, and simplify the data analysis process. Furthermore, our
research analysis indicates that social media data exhibit significant correlations. Therefore, extracting principal components and
major variances can help capture core information for box office
forecasting.
The following variables were subjected to factor analysis using
SPSS software:
Volume of information: Factor analysis was conducted using
the official Weibo followers, likes, shares, topic readings, and topic
discussions in the first week of the film’s release (KMO value =
0.752, _휒_ 2 = 952.756, p < 0.001). The top three Bilibili view counts
were reduced to the Bilibili information volume factor (KMO value
= 0.787, _휒_ 2 = 3004.019, p < 0.001). The top three WeChat official


DSAI 2025, May 23–25, 2025, Wuhan, China Jinhan Shi et al.


**Table 1: Variable Description.**


Variable category Variable name Description Data Source


Dependent variable Movie box office revenue Total box office earnings during the film’s release period, Box Office Mojo
with logarithmic transformation



Independent variable Volume of information Fans, likes, shares, comments, topic readings, and topic
discussions on official Weibo; view count on Bilibili; reading
volume on WeChat official accounts; topic playback volume
on Douyin, with principal component analysis



Weibo, WeChat,
Bilibili, Douyin



Platform ratings Film ratings in the first week of release on Douban,
Taopiaopiao, and Maoyan, with principal component
analysis



Platform ratings Film ratings in the first week of release on Douban, Douban,
Taopiaopiao, and Maoyan, with principal component Taopiaopiao,
analysis Maoyan

Comprehensive heat Popcorn Index Lighthouse
index Professional Edition
Control variable Average movie price Average ticket price during the film’s release period Maoyan
Producer Cumulative total box office earnings of films produced by Maoyan
the producer before the current film, with logarithmic
transformation



Maoyan



Distributor Cumulative total box office earnings of films distributed by
the distributor before the current film, with logarithmic
transformation



Maoyan



Duration Film runtime Maoyan
Sequel Whether the film is a sequel (Binary Variable: 0 = No, 1 = Douban
Yes)

Opening-week showtimes Number of showtimes in the first week of release, with Maoyan
logarithmic transformation

Movie theme song Number of Weibo fans of the movie’s theme song artist, Weibo
with logarithmic transformation



Lead actor Historical box office of the lead actor, Weibo followers,
Baidu Index on the release day, awards, and number of films
participated in, with principal component analysis

Director Baidu Index of the director on the release day, historical box
office of the director, number of films directed, awards, with
principal component analysis



Maoyan, Weibo,
Baidu


Maoyan, Baidu



Screenwriter Historical box office of the screenwriter, number of works Maoyan, Baidu
participated in, awards, with principal component analysis



account reading volumes were reduced to the WeChat information
volume factor (KMO value = 0.729, _휒_ 2 = 3139.949, p < 0.001). Finally, the topic playback volumes from Weibo, Bilibili, WeChat, and
Douyin were further subjected to factor analysis, resulting in the
independent variable “Volume of Information” (KMO value = 0.640,
_휒_ 2 = 198.457, p < 0.001).
Platform ratings: Factor analysis was performed on movie ratings from Douban, Taopiaopiao, and Maoyan during the first week
of release (KMO value = 0.653, _휒_ 2 = 737.104, and p < 0.001).
Lead actor: Factor analysis was conducted on the lead actor’s
historical box office, Weibo followers, Baidu Index on the day of
film release, awards, and number of films participated in (KMO
value = 0.676, _휒_ 2 = 1246.772, p < 0.001).
Director: Factor analysis was conducted on the director’s Baidu
Index on the day of film release, historical box office, number of
films directed, and awards (KMO value = 0.704, _휒_ 2 = 467.443, p <
0.001).


953



Screenwriter: Factor analysis was performed on the screenwriter’s historical box office, number of works participated in, and
awards (KMO value = 0.645, _휒_ 2 = 192.283, p < 0.001).


**5** **Results**


In this study, a systematic analysis of variables was conducted
by comprehensively applying computational techniques based on
the SPSS software platform. Descriptive statistical analysis was
used to quantitatively characterize data features, correlation analysis was employed to uncover the degree of association between
variables, and linear regression analysis was utilized to establish
causal relationship models among variables, thereby deeply exploring the internal connections and interaction mechanisms between
variables.

Firstly, this study performed descriptive statistical analysis on
the dependent variable and independent variables. The result shows
that movie box office revenue (Mean = 19.187, SD = 1.481); volume
of information (Mean = 1.244, SD = 1.103); platform ratings (Mean


Dynamic Signal Effects: The Role of Social Media in Box Office Prediction DSAI 2025, May 23–25, 2025, Wuhan, China


**Table 2: The correlation result of variables.**


1 2 3 4 5 6 7 8 9 10 11 12 13 14


Average movie 1
price

Producer 0.137* 1

Distributor -0.028 0.181** 1

Duration 0.233** 0.042 0.072 1

Sequel 0.05 0.102 -0.024 -0.013 1
Opening-week 0.130* 0.302** 0.112 0.273** 0.064 1
showtimes


Movie theme 0.156* 0.171** 0.092 -0.006 -0.029 0.308** 1

song

Lead actor 0.195** 0.112 -0.027 0.251**   - 0.352** 0.174** 1

0.135*


Director 0.133* 0.145* 0.024 0.221** -0.036 0.182** 0.016 0.314** 1

Screenwriter 0.093 0.082 -0.005 0.149* -0.032 0.046  - 0.203** 0.531** 1

0.178**


Volume of 0.379** 0.180** 0.071 0.298** 0.155* 0.463** 0.241** 0.118 0.089 -0.009 1

information


Platform 0.160* 0.032 0.090 0.241** -0.068 0.230** -0.056 0.013 0.055 0.078 0.235** 1

ratings

Comprehensive 0.080 0.193** 0.033 -0.057 0.023 0.400** 0.237** 0.168** 0.098 0.019 0.132* 0.037 1
heat index


Movie box 0.409** 0.334** 0.100 0.228** 0.154* 0.816** 0.356** 0.333** 0.149* -0.013 0.561** 0.315** 0.454** 1
office revenue


Note: *p < 0.05, **p < 0.01, ***p < 0.001



= 4.416, SD = 1.014); comprehensive heat index (Mean = 70.114, SD
= 23.935). Notably, the standard deviation of the comprehensive
heat index is relatively large, indicating considerable variation in
social media activity across different films. A further examination
shows that the gap between the maximum and minimum values is
quite significant. This phenomenon highlights the stark differences
in the level of social media engagement between films. Some films
generate considerable buzz on social media platforms, attracting
substantial user attention and discussion, while others are relatively
ignored, creating a significant disparity in popularity.
Secondly, correlation analysis was conducted on the dependent
variable, independent variables, and control variables. The correlation coefficient matrix can be found in Table 2. As can be seen
from the correlation coefficients, the volume of information, platform ratings and comprehensive heat index all have a significantly
positive correlation with movie box office revenue (r = 0.561, p <
0.01; r = 0.315, p < 0.01; r = 0.454, p < 0.01), which preliminarily
validates hypotheses H1, H2, and H3.
Thirdly, this study conducted linear regression analysis to further
validate the hypotheses. In this study, two regression models were
constructed as shown in the formulas of Model 1 and Model 2 below.

In Model 1, only control variables and dependent variables were
included.


_푀표푣푖푒퐵표푥푂푓푓푖푐푒푅푒푣푒푛푢푒_ _푖_


_푠_
= _훽_ 0 + � _훽_ 1 _[푠]_ _[푀표푣푖푒퐶표푛푡푟표푙]_ _[푠,푖]_ [+] _[ 훿]_ _[푖]_ [+] _[ 휀]_ _[푖]_ ( _푀표푑푒푙_ 1)

_푠_ =1


954



In Model 2, independent variables were added on the basis of
Model 1.


_푠_
_푀표푣푖푒퐵표푥푂푓푓푖푐푒푅푒푣푒푛푢푒_ _푖_ = _훽_ 0 + � _훽_ 1 _[푠]_ _[푀표푣푖푒퐶표푛푡푟표푙]_ _[푠,푖]_

_푠_ =1

+ _훽_ 2 _푉표푙푢푚푒표푓퐼푛푓표푟푚푎푡푖표푛_ _푖_ + _훽_ 3 _푃푙푎푡푓표푟푚푅푎푡푖푛푔푠_ _푖_
+ _훽_ 4 _퐶표푚푝푟푒ℎ푒푛푠푖푣푒퐻푒푎푡퐼푛푑푒푥_ _푖_ + _훿_ _푖_ + _휀_ _푖_ ( _푀표푑푒푙_ 2)


To ensure the scientific rigor and accuracy of the multiple regression model, variance inflation factor (VIF) diagnostics were
conducted for all the variables included in the model (VIF < 5),
indicating that there is no severe multicollinearity among the independent variables and control variables. This result effectively
eliminates any potential interference or negative impact on the
prediction model caused by multicollinearity, providing a solid and
reliable data foundation for subsequent analyses and conclusion
derivations based on this model.
The result of Model 1 shows that the average movie ticket price
has a positive effect on box office (Table 3). This is primarily because ticket prices are endogenous, often determined by factors
such as production costs, movie quality, and market popularity. Additionally, given a fixed number of viewers, higher average ticket
prices naturally lead to higher total box office revenue, resulting
in a strong correlation between the two. Compared to non-sequel
movies, sequels tend to attract higher popularity and box office
revenue. Many studies have provided explanations for this phenomenon. Future research could further explore the relationship
between adaptations and films.


DSAI 2025, May 23–25, 2025, Wuhan, China Jinhan Shi et al.


**Table 3: Result of Regression Estimation.**


Variable Model 1 Model 2


(Constant) -2.708** 0.639
Average movie price 0.100*** 0.081***
Producer 0.013 0.012

Distributor 0.006 0.003

Duration -0.004 -0.005*

Sequel 0.268** 0.276**
Opening-week showtimes 1.428*** 1.179***
Movie theme song 0.025 0.022
Lead actor 0.052 0.089*

Director 0.006 0.005

Screenwriter -0.082* -0.086**

Volume of information 0.149***

Platform ratings 0.189***
Comprehensive heat index 0.008***
R [2] 0.782 0.820
Adjusted R [2] 0.774 0.810
F Value 88.128*** 84.555***


Note: *p < 0.05, **p < 0.01, ***p < 0.001



We focus on discussing the influence of social media on movie
box office revenue. A comparison of Model 1 and Model 2 shows
that Model 1 is significant (F = 88.128, p < 0.001), with an R [2] of 0.782
and an adjusted R [2] of 0.774, indicating a relatively high explanatory
power. After including social media-related variables, Model 2
remains significant (F = 84.555, p < 0.001), with an R [2] of 0.820 and
an adjusted R [2] of 0.810, both of which are higher than those in
Model 1, with a statistically significant change.
Upon examining the regression coefficients of the three independent variables in Model 2, the result shows that social media
volume of information, platform ratings and comprehensive heat
index all have a significant positive impact on movie box office
revenue ( _훽_ = 0.149, p < 0.001; _훽_ = 0.189, P < 0.001; _훽_ = 0.008, P <
0.001). Thus, the results validate hypotheses H1, H2 and H3.


**6** **Discussion**


In this study, we conducted an in-depth analysis of box office data
from 256 movies, testing the hypotheses regarding the mechanisms
through which three key social media signals—volume of information, social media platform ratings, and comprehensive heat
index—affect movie box office performance. Through a series of
scientific analyses and validations, we found that all three hypotheses hold true. This will provide stronger theoretical support and
practical reference for research and decision-making in the film
industry.


**6.1** **Theoretical Contributions**

On one hand, the findings of this study offer several significant theoretical contributions by integrating and extending signal theory
and social influence theory in the context of movie box office performance. Building upon signaling theory, which posits that observable indicators can reduce information asymmetry, we demonstrate
that social media metrics act as dynamic market signals that reliably


955



convey information about a film’s appeal and quality to potential
audiences. In parallel, drawing from social influence theory, our
results confirm that aggregated online behaviors (such as ratings
and engagement levels) serve as persuasive social proof that shapes
individual consumer decisions [[][14][]] . By merging these two perspectives, the research introduces a unified framework in which social
media indicators are conceptualized as credible signals emanating
from both official channels and the audience community, thereby
redefining the role of social media in film industry research. This
theoretical integration expands the current understanding of movie
success drivers by highlighting how digital word-of-mouth and
promotional signals jointly contribute to box office performance.
On the other hand, this study develops and validates a comprehensive predictive model that incorporates multi-dimensional social
media metrics alongside traditional predictors. Previous research
on box office forecasting often examined limited factors or singleplatform data, leading to fragmented insights [[][39][,][46][]] . In contrast,
our model simultaneously accounts for official information volume,
audience-driven ratings, and comprehensive heat index that aggregates cross-platform engagement, capturing a more holistic picture
of a movie’s market signal profile. This finding extends signaling
theory by empirically validating that novel, non-traditional signals
(e.g., the cross-platform heat index) carry significant informational
value in predicting real-world outcomes.


**6.2** **Practical Implications**


In addition to theoretical advancements, the study yields practical
implications that are highly relevant for film industry stakeholders,
including producers, marketing professionals, and social media
platform operators. On one hand, for film producers and marketing professionals, the study highlights that investments in social
media strategies are not merely ancillary promotions but critical


Dynamic Signal Effects: The Role of Social Media in Box Office Prediction DSAI 2025, May 23–25, 2025, Wuhan, China



components of a film’s commercial success. Ensuring a high volume of timely, official information releases across popular social
networks helps build early awareness and acts as a positive signal to moviegoers. Likewise, fostering strong eWOM can amplify
social influence effects that persuade undecided audiences to purchase tickets [[][49][]] . Marketing campaigns should integrate social
media analytics as a core tool: by monitoring metrics such as the
information volume and heat index in real time, practitioners can
gauge audience sentiment and engagement levels, enabling them to
adjust advertising spend or promotional tactics on the fly. On the
other hand, for social media platform operators, the demonstrated
link between platform data (e.g., post views, shares, likes, and user
ratings) and box office performance highlights the value of maintaining an authentic and engaging user environment. Platforms
that curb fake accounts, bot-driven interactions, or malicious rating
behavior will provide more reliable signals to the market, which in
turn encourages studios to engage more deeply with those channels
for publicity. There is also incentive for platforms to collaborate
with content producers to elevate a movie’s visibility (its “heat”) in
the weeks around release.


**6.3** **Limitations and Future Research**


This study utilized a relatively small sample size of 256 films, which
may impact the accuracy and reliability of the findings. A larger
sample size is needed to enhance the completeness and precision
of the data, ensuring that the research conclusions are robust. Additionally, the objectivity of platform ratings is not guaranteed,
as users may engage in biased behaviours, such as malicious or
repeated ratings. This subjective error could affect the data. Future research could incorporate diverse perspectives and additional
social media indicators, such as sentiment analysis, consumer behavior, and brand value, to enhance prediction accuracy. Lastly, this
study focused on the correlation between social media and first-tier
distribution channels but did not consider the entire distribution

process, including secondary (and illegal) channels. Future research
could explore the role of social media in multi-tiered movie distribution, capturing its broader influence throughout other moderators.


**7** **Conclusions**


This study, leveraging web crawling technology by Python and
SPSS-based multiple linear regression analysis, systematically explores the impact of social media on box office prediction within
the framework of signaling and social influence theories. Empirical analysis of 256 Chinese films (2018-2022) reveals that social
media information volume, platform ratings, and comprehensive
heat index significantly enhance the predictive accuracy of box
office revenue. These results highlight the dual role of digital platforms as both communication channels and behavioral amplifiers in
the film industry. By integrating machine-assisted data collection
and statistical learning methods, this research bridges traditional
economic models with cutting-edge computational techniques, providing actionable insights for optimizing promotional strategies
and resource allocation. As social media continues to reshape audience engagement patterns, its integration with AI-driven analytics
will remain pivotal for fostering data-driven decision-making and
ensuring the sustainable development of the film ecosystem.


956



**Acknowledgments**

This research was funded by the General Project of Shanghai Philosophy and Social Science, Grant no: 2020BGL031.


**References**


[1] Mavlanova, T.; Benbunan-Fich, R.; Koufaris, M. Signaling theory and information
asymmetry in online commerce. _Information & Management_ **2012**, _49_, 240-247.
[https://doi.org/10.1016/j.im.2012.05.004.](https://doi.org/10.1016/j.im.2012.05.004)

[2] Du, J.; Xu, H.; Huang, X. Box office prediction based on microblog. _Expert Systems_
_with Applications_ **2014**, _41_ [, 1680-1689. https://doi.org/10.1016/j.eswa.2013.08.065.](https://doi.org/10.1016/j.eswa.2013.08.065)

[3] Fan, L.; Zhang, X.; Rai, L. When should star power and eWOM be responsible
for the box office performance? - An empirical study based on signaling theory.
_Journal of Retailing and Consumer Services_ **2021**, _62_ [, 102591. https://doi.org/10.](https://doi.org/10.1016/j.jretconser.2021.102591)
[1016/j.jretconser.2021.102591.](https://doi.org/10.1016/j.jretconser.2021.102591)

[4] Hennig-Thurau, T.; Ravid, S.A.; Sorenson, O. The Economics of Filmed Entertainment in the Digital Era. _Journal of Cultural Economics_ **2021**, _45_, 157-170.
[https://doi.org/10.1007/s10824-021-09407-6.](https://doi.org/10.1007/s10824-021-09407-6)

[5] Hwangbo, H.; Kim, J. A Text Mining Approach for Sustainable Performance in the
Film Industry. _Sustainability_ **2019**, _11_ [, 3207. https://doi.org/10.3390/su11113207.](https://doi.org/10.3390/su11113207)

[6] Apala, K.R.; Jose, M.; Motnam, S.; Chan, C.-C.; Liszka, K.J.; Gregorio, F.d. Prediction of movies box office performance using social media. In Proceedings
of the 2013 IEEE/ACM International Conference on Advances in Social Networks Analysis and Mining, Niagara, Ontario, Canada, **2013** ; pp. 1209–1214.
[https://doi.org/10.1145/2492517.25002](https://doi.org/10.1145/2492517.25002)

[7] Lee, Y.-J.; Keeling, K.B.; Urbaczewski, A. The Economic Value of Online User
Reviews with Ad Spending on Movie Box-Office Sales. _Information Systems_
_Frontiers_ **2019**, _21_ [, 829-844. https://doi.org/10.1007/s10796-017-9778-7.](https://doi.org/10.1007/s10796-017-9778-7)

[8] Rubin, D.; Mohr, I.; Kumar, V. Beyond the box office: A conceptual framework
for the drivers of audience engagement. _Journal of Business Research_ **2022**, _151_,
[473-488. https://doi.org/10.1016/j.jbusres.2022.07.021.](https://doi.org/10.1016/j.jbusres.2022.07.021)

[9] Xu, X.-Y.; Jia, Q.-D. A new exploration of signaling theory in social commerce
facilitated cross-border retailing: A four-stage approach. _Information & Manage-_
_ment_ **2025**, _62_ [, 104154. https://doi.org/10.1016/j.im.2025.104154.](https://doi.org/10.1016/j.im.2025.104154)

[10] Stiglitz, J.E. The Contributions of the Economics of Information to Twentieth
Century Economics. _The Quarterly Journal of Economics_ **2000**, _115_, 1441-1478.
[https://doi.org/10.1162/003355300555015.](https://doi.org/10.1162/003355300555015)

[11] Pandey, S.; Mittal, S.; Chawla, D. Tackling consumer information asymmetry and
perceived uncertainty for luxury re-commerce through seller signals. _Journal_
_of Retailing and Consumer Services_ **2024**, _79_ [, 103736. https://doi.org/10.1016/j.](https://doi.org/10.1016/j.jretconser.2024.103736)
[jretconser.2024.103736.](https://doi.org/10.1016/j.jretconser.2024.103736)

[12] Fluet, C.; Garella, P.G. Advertising and prices as signals of quality in a regime of
price rivalry. _International Journal of Industrial Organization_ **2002**, _20_, 907-930.
[https://doi.org/10.1016/S0167-7187(01)00075-3.](https://doi.org/10.1016/S0167-7187(01)00075-3)

[13] Liu, H.; Jayawardhena, C.; Shukla, P.; Osburg, V.-S.; Yoganathan, V. Electronic
word of mouth 2.0 (eWOM 2.0) – The evolution of eWOM research in the new age.
_Journal of Business Research_ **2024**, _176_ [, 114587. https://doi.org/10.1016/j.jbusres.](https://doi.org/10.1016/j.jbusres.2024.114587)
[2024.114587.](https://doi.org/10.1016/j.jbusres.2024.114587)

[14] Cheung, C.M.K.; Xiao, B.S.; Liu, I.L.B. Do actions speak louder than voices?
The signaling role of social information cues in influencing consumer purchase
decisions. _Decision Support Systems_ **2014**, _65_ [, 50-58. https://doi.org/10.1016/j.dss.](https://doi.org/10.1016/j.dss.2014.05.002)
[2014.05.002.](https://doi.org/10.1016/j.dss.2014.05.002)

[15] Rani, A.; Shivaprasad, H.N. Revisiting the antecedent of electronic word-ofmouth (eWOM) during COVID-19 Pandemic. _DECISION_ **2021**, _48_ [, 419-432. https:](https://doi.org/10.1007/s40622-021-00298-2)
[//doi.org/10.1007/s40622-021-00298-2.](https://doi.org/10.1007/s40622-021-00298-2)

[16] Liang, Q.; Liao, X.; Liu, J. A social ties-based approach for group decision-making
problems with incomplete additive preference relations. _Knowledge-Based Systems_
**2017**, _119_ [, 68-86. https://doi.org/10.1016/j.knosys.2016.12.001.](https://doi.org/10.1016/j.knosys.2016.12.001)

[17] Monteserin, A.; Amandi, A. Whom should I persuade during a negotiation? An
approach based on social influence maximization. _Decision Support Systems_ **2015**,
_77_ [, 1-20. https://doi.org/10.1016/j.dss.2015.05.003.](https://doi.org/10.1016/j.dss.2015.05.003)

[18] Deutsch, M.; Gerard, H.B. A study of normative and informational social influences upon individual judgment. _The Journal of Abnormal and Social Psychology_
**1955**, _51_ [, 629-636. https://doi.org/10.1037/h0046408.](https://doi.org/10.1037/h0046408)

[19] Feng, N.; Shi, Y.; Li, Y.; Li, D.; Zhang, J.; Li, M. An Exploration of the Dynamics
Between Social Media and Box Office Performance. _Information Systems Frontiers_
**2024**, _26_ [, 591-608. https://doi.org/10.1007/s10796-023-10389-3.](https://doi.org/10.1007/s10796-023-10389-3)

[20] Smith, J.; Louis, W.; Schultz, P. Introduction: Social influence in action. _Group_
_Processes & Intergroup Relations - GROUP PROCESS INTERGROUP RELA_ **2011**, _14_,
[599-603. https://doi.org/10.1177/1368430211410214.](https://doi.org/10.1177/1368430211410214)

[21] Park, C.W.; Lessig, V.P. Students and Housewives: Differences in Susceptibility
to Reference Group Influence. _Journal of Consumer Research_ **1977**, _4_, 102-110.
[https://doi.org/10.1086/208685.](https://doi.org/10.1086/208685)

[22] Kim, Y.A.; Srivastava, J. Impact of social influence in e-commerce decision making.
In Proceedings of the ACM International Conference Proceeding Series, **2007** ;
[pp. 293-302. https://doi.org/10.1145/1282100.1282157.](https://doi.org/10.1145/1282100.1282157)


DSAI 2025, May 23–25, 2025, Wuhan, China Jinhan Shi et al.




[23] Oliveira, C.; Garcia, A.C.B.; Vivacqua, A.S. The cost structure of influencers’ posts:
the risk of losing followers. _Personal and Ubiquitous Computing_ **2021**, _25_, 259-280.
[https://doi.org/10.1007/s00779-020-01502-3.](https://doi.org/10.1007/s00779-020-01502-3)

[24] Tafesse, W.; Wood, B.P. Followers’ engagement with instagram influencers: The
role of influencers’ content and engagement strategy. _Journal of Retailing and_
_Consumer Services_ **2021**, _58_ [, 102303. https://doi.org/10.1016/j.jretconser.2020.](https://doi.org/10.1016/j.jretconser.2020.102303)
[102303.](https://doi.org/10.1016/j.jretconser.2020.102303)

[25] Ismagilova, E.; Dwivedi, Y.K.; Slade, E.; Williams, M.D. Persuasiveness of eWOM
Communications. In _Electronic Word of Mouth (eWOM) in the Marketing Context: A_
_State of the Art Analysis and Future Directions_, Ismagilova, E., Dwivedi, Y.K., Slade,
E., Williams, M.D., Eds.; Springer International Publishing: Cham, **2017** ; pp. 49-71.
[Available online: https://link.springer.com/chapter/10.1007/978-3-319-52459-7_5.](https://link.springer.com/chapter/10.1007/978-3-319-52459-7_5)

[26] Tsao, W.-C.; Hsieh, M.-T. eWOM persuasiveness: do eWOM platforms and product
type matter? _Electronic Commerce Research_ **2015**, _15_ [, 509-541. https://doi.org/10.](https://doi.org/10.1007/s10660-015-9198-z)
[1007/s10660-015-9198-z.](https://doi.org/10.1007/s10660-015-9198-z)

[27] Zhao, L.; Xu, Y.; Xu, X. The effects of trust and platform innovation characteristics on consumer behaviors in social commerce: A social influence
perspective. _Electronic Commerce Research and Applications_ **2023**, _60_, 101284.
[https://doi.org/10.1016/j.elerap.2023.101284.](https://doi.org/10.1016/j.elerap.2023.101284)

[28] Sharda, R.; Delen, D. Predicting box-office success of motion pictures with neural
networks. _Expert Systems with Applications_ **2006**, _30_ [, 243-254. https://doi.org/10.](https://doi.org/10.1016/j.eswa.2005.07.018)
[1016/j.eswa.2005.07.018.](https://doi.org/10.1016/j.eswa.2005.07.018)

[29] Barman, D.; Singha, R.K.; Chowdhury, N. Prediction of possible business of a
newly launched film using ordinal values of film-genres. _International Journal_
_of Intelligent Systems and Applications (IJISA)_ **2013**, _5_ [, 53-60. https://doi.org/10.](https://doi.org/10.5815/ijisa.2013.06.07)
[5815/ijisa.2013.06.07.](https://doi.org/10.5815/ijisa.2013.06.07)

[30] Chisholm, D.C.; Fernández-Blanco, V.; Abraham Ravid, S.; David Walls, W. Economics of motion pictures: The state of the art. _Journal of Cultural Economics_
**2015**, _39_ [, 1-13. https://doi.org/10.1007/s10824-014-9234-1.](https://doi.org/10.1007/s10824-014-9234-1)

[31] Li, D.; Liu, Z.-P. Predicting Box-Office Markets with Machine Learning Methods.
_Entropy_ **2022**, _24_ [, 711. https://doi.org/10.3390/e24050711.](https://doi.org/10.3390/e24050711)

[32] Menaga, D.; Lakshminarayanan, A. A Method for Predicting Movie Box-Office
using Machine Learning. In Proceedings of the 2023 4th International Conference
on Electronics and Sustainable Communication Systems (ICESC), 6-8 July 2023,
**2023** [; pp. 1228-1232. https://doi.org/10.1109/ICESC57686.2023.10192928.](https://doi.org/10.1109/ICESC57686.2023.10192928)

[33] Withdraw, W. withdraw. _Applied and Computational Engineering_ **2024**, _100_, 156[161. https://doi.org/10.54254/2755-2721/100/20251729.](https://doi.org/10.54254/2755-2721/100/20251729)

[34] Chintagunta, P.K.; Gopinath, S.; Venkataraman, S. The effects of online user
reviews on movie box office performance: Accounting for sequential rollout
and aggregation across local markets. _Marketing science_ **2010**, _29_ [, 944-957. https:](https://doi.org/10.1287/mksc.1100.0572)
[//doi.org/10.1287/mksc.1100.0572.](https://doi.org/10.1287/mksc.1100.0572)

[35] Lee, Y.; Kim, S.-H.; Cha, K.C. A generalized Bass model for predicting the sales
patterns of motion pictures having seasonality and herd behavior. _Journal of_
_Global Scholars of Marketing Science_ **2012**, _22_ [, 310-326. https://doi.org/10.1080/](https://doi.org/10.1080/21639159.2012.721214)
[21639159.2012.721214.](https://doi.org/10.1080/21639159.2012.721214)


957




[36] Lee, S.; Choeh, J. Movie Production Efficiency Moderating between Online Wordof-Mouth and Subsequent Box Office Revenue. Sustainability, **2020**, 12 (16), 6602.
[https://doi.org/10.3390/su12166602.](https://doi.org/10.3390/su12166602)

[37] Ahmad, I.S.; Bakar, A.A.; Yaakub, M.R. Movie Revenue Prediction Based on Purchase Intention Mining Using YouTube Trailer Reviews. _Information Processing_
_& Management_ **2020**, _57_ [, 102278. https://doi.org/10.1016/j.ipm.2020.102278.](https://doi.org/10.1016/j.ipm.2020.102278)

[38] Sadadi, H.; Aloufi, D.; Ye, Z. Predict Movie Revenue by Sentimental Analysis of
Twitter. In Proceedings of the International Conference on Data Processing and
Applications, Guangdong, China, **2018** [; pp. 1–4. https://doi.org/10.1145/3224207.](https://doi.org/10.1145/3224207.3224208)
[3224208.](https://doi.org/10.1145/3224207.3224208)

[39] Kwon, B. Twitter Sentiment Analysis and Box Office Revenue Prediction. **2021** .
[https://doi.org/10.17615/cyk5-xh18.](https://doi.org/10.17615/cyk5-xh18)

[40] Qiu, X.; Tang, T.Y. Microblog Mood Predicts the Box Office Performance. In
Proceedings of the 2018 Artificial Intelligence and Cloud Computing Conference,
**2018** [; pp. 129-133. https://doi.org/10.1145/3299819.3299839.](https://doi.org/10.1145/3299819.3299839)

[41] Song, T.; Huang, J.; Tan, Y.; Yu, Y. Using User- and Marketer-Generated Content
for Box Office Revenue Prediction: Differences Between Microblogging and
Third-Party Platforms. _Information Systems Research_ **2019** [. https://doi.org/10.](https://doi.org/10.1287/isre.2018.0797)
[1287/isre.2018.0797.](https://doi.org/10.1287/isre.2018.0797)

[42] Gupta, S.; Deodhar, S.J.; Tiwari, A.A.; Gupta, M.; Mariani, M. How consumers
evaluate movies on online platforms? Investigating the role of consumer engagement and external engagement. _Journal of Business Research_ **2024**, _176_, 114613.
[https://doi.org/10.1016/j.jbusres.2024.114613.](https://doi.org/10.1016/j.jbusres.2024.114613)

[43] Hu, X.; Chen, X.; Davison, R.M. Social support, source credibility, social influence,
and impulsive purchase behavior in social commerce. _International Journal of_
_Electronic Commerce_ **2019**, _23_ [, 297-327. https://doi.org/10.1016/j.jbusres.2024.](https://doi.org/10.1016/j.jbusres.2024.114613)
[114613.](https://doi.org/10.1016/j.jbusres.2024.114613)

[44] Chen, H.; Duan, W.; Zhou, W. When products receive reviews across platforms:
Studying the platform concentration of electronic word-of-mouth. _Information &_
_Management_ **2021**, _58_ [, 103532. https://doi.org/10.1016/j.im.2021.103532.](https://doi.org/10.1016/j.im.2021.103532)

[45] Moon, S.; Bergey, P.K.; Iacobucci, D. Dynamic Effects among Movie Ratings,
Movie Revenues, and Viewer Satisfaction. _Journal of Marketing_ **2010**, _74_, 108-121.
[https://doi.org/10.1509/jmkg.74.1.108.](https://doi.org/10.1509/jmkg.74.1.108)

[46] Palsson, C.; Price, J.; Shores, J. Ratings and revenues: Evidence from movie ratings.
_Contemporary Economic Policy_ **2013**, _31_ [, 13-21. https://doi.org/10.1111/j.1465-](https://doi.org/10.1111/j.1465-7287.2012.00315.x)
[7287.2012.00315.x.](https://doi.org/10.1111/j.1465-7287.2012.00315.x)

[47] Schwemmer, C.; Ziewiecki, S. Social media sellout: The increasing role of product
promotion on YouTube. _Social Media+ Society_ **2018**, _4_ [, 2056305118786720. https:](https://doi.org/10.1177/2056305118786720)
[//doi.org/10.1177/2056305118786720.](https://doi.org/10.1177/2056305118786720)

[48] Chiu, Y.-L.; Chen, K.-H.; Wang, J.-N.; Hsu, Y.-T. The impact of online movie wordof-mouth on consumer choice: a comparison of American and Chinese consumers.
_International Marketing Review_ **2019**, _36_ [, 996-1025. https://doi.org/10.1108/IMR-](https://doi.org/10.1108/IMR-06-2018-0190)
[06-2018-0190.](https://doi.org/10.1108/IMR-06-2018-0190)

[49] Arif, M.; Siregar, I.K. Purchase decision affects, price, product quality and word of
mouth. _International Journal of Economic, Technology and Social Sciences (Injects)_
**2021**, _2_ [, 260-273. https://doi.org/10.53695/injects.v2i1.389.](https://doi.org/10.53695/injects.v2i1.389)


