# _Do online review readers react differently_ _when exposed to credible versus fake_ _online reviews?_

#### Article

Published Version


Creative Commons: Attribution 4.0 (CC-BY)


Open access

### Kim, J. M., Park, K. K.-c. and Mariani, M. M. ORCID: https://orcid.org/0000-0002-7916-2576 (2023) Do online review readers react differently when exposed to credible versus fake online reviews? Journal of Business Research, 154. 113377. ISSN 0148-2963 doi: 10.1016/j.jbusres.2022.113377 Available at https://centaur.reading.ac.uk/108345/


It is advisable to refer to the publisher’s version if you intend to cite from the
[work. See Guidance on citing.](http://centaur.reading.ac.uk/71187/10/CentAUR%20citing%20guide.pdf)


To link to this article DOI: http://dx.doi.org/10.1016/j.jbusres.2022.113377


Publisher: Elsevier


All outputs in CentAUR are protected by Intellectual Property Rights law,
including copyright law. Copyright and IPR is retained by the creators or other
copyright holders. Terms and conditions for use of this material are defined in
[the End User Agreement .](http://centaur.reading.ac.uk/licence)

## www.reading.ac.uk/centaur


#### **CentAUR** Central Archive at the University of Reading

Reading’s research outputs online


[Journal of Business Research 154 (2023) 113377](https://doi.org/10.1016/j.jbusres.2022.113377)


Contents lists available at ScienceDirect

#### Journal of Business Research


[journal homepage: www.elsevier.com/locate/jbusres](https://www.elsevier.com/locate/jbusres)

##### Do online review readers react differently when exposed to credible versus fake online reviews?


Jong Min Kim [a] [,] [1], Keeyeon Ki-cheon Park [b] [,] [1], Marcello M. Mariani [c] [,] [d] [,] [* ]


a _College of Business and Management, Wenzhou-Kean University, China_
b _Kedge Business School, 680 Cr de la Lib_ ´ _eration, 33405 Talence, France_
c _Henley Business School, University of Reading, Greenlands, Henley on Thames Oxfordshire, RG9 3AU, United Kingdom_
d _University of Bologna, Italy_



A R T I C L E I N F O


_Keywords:_

Fake reviews

Review manipulation
Topic modelling

Latent Dirichlet Allocation

Movie

Revenue


**1.** **Introduction**



A B S T R A C T


Marketing research on online reviews has attempted to understand the antecedents and consequences of review
manipulation. Building on the elaboration likelihood model (ELM), this study deploys a rare dataset that allows
distinguishing credible from less credible (and likely fake) online reviews by means of the online review posting
policy adopted by the movie review website [Naver.com. We use text analysis entailing word embedding and](http://Naver.com)
topic modelling techniques such as Latent Dirichlet Allocation, to capture content depth across different types of
online reviews (credible vs manipulated). Furthermore, we explore how differences in the textual content of
credible vs manipulated online reviews affect customer purchase decisions. Our results highlight that less
credible reviews tend to contain more superficial information compared to more credible reviews, and that
different levels of source credibility lead to distinctively different impacts of online reviews on box office

revenue.



Digital technologies are radically changing the marketing landscape
with the emergence of online tools and techniques facilitating the
interaction of consumers with companies, brands and products (Bres­
ciani et al., 2021; D’Ambra et al., 2022; Mariani et al., 2022). In this
context, online consumer reviews have become one of the most crucial
sources of information about products because reviews help consumers
identify unobserved product quality traits and obtain quality cues
(Lappas et al., 2016) at a low cost, and almost in real time. Scholarly
research in online reviews has found that online reviews significantly
influence consumer awareness and attitude toward firms and brands
(Vermeulen and Seegers, 2009), and product sales (Chevalier and
Mayzlin, 2006; Dellarocas et al., 2007; Mariani and Borghi, 2020). In­
dustry research indicates that 9 out of 10 consumers read reviews before
making a purchase (Trustpilot, 2020). Such importance of online re­
views induces firms to be tempted to produce fake reviews to deceive
reviewers and persuade them to buy (Luca and Zervas, 2016). In addi­
tion, rapid technological development encourages the creation of fake
reviews for product promotion (Floridi, 2018). Previous studies suggest



that review manipulation is a deceptive practice that is aimed at
misleading consumers, leading them to make unintended purchase de­
cisions (Dellarocas, 2006; Kumar et al., 2018). Thus, manipulation can
affect consumers’ trust and uncertainty (Ma and Lee, 2014; Zhao et al.,

2013
). Furthermore, it influences the credibility of online platforms in
the eyes of consumers (Dwivedi et al., 2020).

The rise of such deceptive reviews is encouraging scholars to inves­
tigate the diverse aspects of credibility in online reviews from an aca­
demic perspective (Cox et al., 2009; Filieri et al., 2015). Research on
online reviews has attempted to focus on review manipulation with the
objective of detecting fake reviews on online review sites, such as Yelp,
Amazon, and Trip Advisor, using various algorithms (Zhang et al., 2016;
Cui et al., 2012; Kwark et al., 2014). Most existing studies focus on
several superficial attributes of online reviews, such as the number of
words in a document and review ratings, to distinguish fake reviews
from authentic reviews (Mayzlin et al., 2014; Banerjee and Chua,
2017a). However, there is still a need for an in-depth investigation of
consumer perceptions of the credibility of online reviews. Indeed, there
is a dearth of studies exploring consumer information processing of
credible vs less credible/fake online reviews. Therefore, this study aims



 - Corresponding author.
_E-mail addresses:_ [jokim@kean.edu (J.M. Kim), parkky88@kaist.ac.kr (K.K.-c. Park), m.mariani@henley.ac.uk (M.M. Mariani).](mailto:jokim@kean.edu)
1 Jong Min Kim and Keeyeon Ki-cheon Park are co-first authors and contributed equally to the paper.


[https://doi.org/10.1016/j.jbusres.2022.113377](https://doi.org/10.1016/j.jbusres.2022.113377)
Received 4 January 2022; Received in revised form 3 October 2022; Accepted 9 October 2022

Available online 21 October 2022
0148-2963/© 2022 The Author(s). Published by Elsevier Inc. [This is an open access article under the CC BY license (http://creativecommons.org/licenses/by/4.0/).](http://creativecommons.org/licenses/by/4.0/)


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



to fill this gap and investigates how consumers assess online reviews
based on source credibility. More specifically, the objective of this work
is to investigate whether online review readers process information
differently when they choose to read reviews displaying different levels
of source credibility.

In order to obtain an in-depth understanding of consumer informa­
tion processing, this study adopts the dual-process theory, in particular
the elaboration likelihood model (ELM) (Petty and Cacioppo, 1986). The
ELM defines two ways through which individuals process information
which entails two different routes: central vs peripheral routes. The
central route is based on relatively high degrees of thinking, while the
peripheral route occurs with relatively little thinking. This study ex­
plores how individuals process information in online reviews based on
the levels of source credibility determined by fake reviews that they
choose to evaluate.


To distinguish between credible and less credible (and likely fake)
online reviews, we examine the extent to which the design of the review
posting policy on a website can discourage or encourage manipulation.
The empirical setting is similar to that used by Mayzlin et al. (2014),
which exploited the differences in review website designs to identify
unbiased (credible) vs fake (less credible) reviews. More specifically,
this study deploys a rare dataset that allows distinguishing credible and
less credible (and likely fake) online reviews by means of the online
review posting policy adopted by a movie online review website, namely
[Naver.com.](http://Naver.com) [Naver.com](http://Naver.com) separates customer reviews into two types
(viewer-type versus netizen-type) based on the level of credibility
determined by purchase verification to avoid review manipulation that
lowers the credibility of online reviews (Ma et al., 2019). For instance, if
a customer posts a review with a confirmed movie ticket through the
website, the review is classified as viewer-type. Then, the customer who
reads such a review knows if the review was written by an unbiased
customer, so it is considered relatively credible. Otherwise, reviews
without purchase confirmation are classified as relatively less credible
(netizen-type). The website lets reviewers/consumers know what the
difference is between viewer-type and netizen-type reviews. With this
unique set of data, we examine online reviews’ textual characteristics,
mainly related to movie content, that we use as attributes that differ­
entiate less credible reviews from credible reviews. Then, we explore
how such differences in the textual content of online reviews would

affect customer purchase decisions.

Our results highlight that less credible reviews (netizen-type) tend to
contain more superficial information compared to more credible reviews
(viewer-type) in terms of movie content analysis. In addition, our find­
ings demonstrate that such different levels of source credibility lead to
distinctively different impacts of online reviews on box office revenue.
Based on the results, this study contributes to the literature revolving
around fake reviews in different ways. First, this study uncovers how
customers perceive manipulation of online reviews by assessing
different levels of source credibility with different information pro­
cessing methods – an important extension to the existing literature
addressing how customers process online reviews based on credibility.
Second, this work explains the impacts of textual attributes on customer
purchase decisions at different credibility levels.

The rest of the paper is structured as follows. In the next section, we
illustrate the theoretical underpinnings of studies pertaining to infor­
mation processing and source credibility and review the extant litera­
ture on review manipulation to construct and develop our hypotheses. In
the third section, we describe our research design, data, and model. In
the fourth and fifth sections, we present respectively a detailed meth­
odology and the empirical results. In the sixth section, we discuss the
findings, illustrate the implications of the study, and point to limitations
and future research directions.



**2.** **Theoretical background and hypotheses development**


_2.1._ _Cognitive information processing_


The dual-process theory describes two different and alternative types
of cognitive information processing in the decision-making process
(Evans, 2008; Evans and Stanovich, 2013). The elaboration likelihood
model (ELM) is the reference model used in this study, and it comes from
the dual-process approach, which has been broadly used to investigate
how information processing by individuals leads to their decisions in
online environments (Lee et al., 2008; Park and Kim, 2008). The ELM
identifies two routes of cognitive information processing: the central
route and the peripheral route (Petty and Cacioppo, 1986), assuming the
routes as mutually exclusive. Individuals who engage in the central
route are likely to adopt a “maximization” approach whereby they
rationally collect and analyze the maximum amount of information
available very carefully, while those who engage in the peripheral route
tend to deploy shortcuts and pieces of information (e.g., the online re­
view rating only) (Mariani and Borghi, 2020) to make their decisions.

The mode of processing selected depends on internal and external
factors (Wirth et al., 2007). Internal factors consist of the individual’s
cognitive abilities, such as prior knowledge or motivation to invest time.
The ELM suggests that there exist capacity and inspiration in “central”
processing but not in “peripheral” (Chen and Chaiken, 1999). For
instance, when the message’s recipient or review reader has the moti­
vation or can think on the message, they are likely to use the central
route. External factors involve the complexity of information and other
information-inherent and situational characteristics (Chaiken et al.,
1989; Petty and Cacioppo, 1990). Furthermore, the characteristics of the
social context, such as accountability and the risk of false decisions, can
externally affect how individuals select the mode of information pro­
cessing (Payne et al., 1993). This study aims to understand an external
factor that may influence consumers’ processing mode selection.


_2.2._ _Credibility theory in information processing_


Credibility is a multidimensional concept that results from an
interaction of several dimensions, including source characteristics,
message characteristics, receiver characteristics, and the media (Wathen
and Burkell, 2002). In this study, we focus on source credibility, which is
an important influencer of consumer decisions in the online context
(Watts and Zhang, 2008). Source credibility refers to the extent to which
a consumer perceives the source of information they obtain online as
trustworthy and expert (Coursaris and Osch, 2016). It is determined by
two underlying factors such as expertise and trustworthiness (Hovland
et al., 1953). Expertise refers to the extent to which the source or speaker
is considered capable of providing valid assertions, whereas trustwor­
thiness is defined as the extent to which an individual perceives the
sender or speaker to be trustful, fair, and honest (Hovland et al., 1953).

This study emphasizes the effect of source credibility as a factor that
influences readers’ information processing routes. Given the nature of
online contexts (such as lack of tangible cues), credibility is a crucial
driver in reducing any associated risks (Bart et al., 2005), and reduces
the likelihood of biased decision making. Then, determining which
sources to use depends on information-seeking information (Sweetser
et al., 2008; Johnson and Kaye, 2002). Therefore, if individuals are
highly motivated to process information to make unbiased decisions,
they look for information sources with a higher level of credibility. In
other words, with a high level of motivation, they assess credible in­
formation through an extensive and detailed process. Therefore, the
likelihood of elaboration is determined by the motivation to engage in
evaluating the information. In this study, we examine how customers
process online reviews in their decision-making processes, depending on
the level of source credibility they are motivated to engage.



2


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



_2.3._ _Hypothesis development_


Previous literature in many different fields has examined online re­
view manipulation across a number of products such as books, travel
services, and music (Dellarocas, 2006; Heydari et al., 2015; Banerjee and
Chua, 2017b). Compared to face-to-face communication, online
communication displays multiple limitations because non-verbal
communication cues such as facial expression, body gestures, or voice
tone cannot be used. So far, the literature concerning online review
manipulation has explored several online review features that help
distinguish fake reviews from authentic reviews, such as text features
like word frequency and length (Fei et al., 2021; Banerjee and Chua,

2014
). However, text features are not sufficient to define the specific
characteristics of fake reviews. In this study, we focus on a specific
subject in reviews, namely movie-story-related content, to distinguish
online reviews subject to manipulation versus those that are authentic.

Review manipulators have a tendency to imitate authentic reviews to
avoid detection, such as using similar language to that deployed in
genuine reviews to enhance their credibility (Luppas, 2012; Chen and
Chen, 2015). This happens because writing one’s imagined experience is
difficult. Hence, manipulators may choose to copy other existing reviews
or release information with minor changes. One of the public-released
information in the movie industry is a movie summary, which shortly
describes movie content for advertisement. Then, manipulators may
duplicate the released movie summary and then post it in the form of a
review with associated high ratings to lure the purchase decision of
potential customers with credibility. As a consequence, these fake re­
views tend to be based on superficial information related to movie
content.


In contrast, genuine consumers who really watch movies before
posting their opinions online may write a review of the movie they
actually watched with more effort. Accordingly, compared to fake re­
views, genuine reviews tend to display more detailed information about
movie content. In summary, even though a review subject is similar for
both fake and authentic reviewers, the depth of the analysis contained in
the reviews would be different. More specifically, fake reviewers would
provide more superficial and less informative reviews than authentic
reviewers. In this research, we differentiate the level of information
depth in online reviews by building on two different measures: (1) se­
mantic similarity between the movie summary published by the movie
company and online reviews, (2) topic analysis in online reviews. For
instance, an online review with high semantic similarity covers super­
ficial information that requires less effort to receive the message. On the
other hand, an online review that is analyzed in connection with various
topics represents in-depth analysis of movie content. Then, we use these
measures to distinguish the characteristics between fake and authentic
reviews in terms of the level of information depth. Consequently, we
develop the following hypotheses:


**H1a** .
_Fake reviews tend to contain more superficial information of movie_
_content than credible reviews._


**H1b** . _Credible reviews tend to contain more in-depth analysis of movie_
_content than fake reviews._


’s trust in the review
Review credibility has been defined as a reader
being read (Cheung et al., 2012; Filieri, 2016). The credibility of online
reviews is a fundamental component that values WOM and influences
the final decision of the review readers. In the online context, credibility
is important to build customer trust and reduce the perceived inherent
risk in online feedback (Brown et al., 2007). For instance, online reviews
become more persuasive if the sources display higher levels of credi­
bility. However, one factor that affects the level of credibility is
manipulation of reviews (Dwivedi et al., 2021), which increases con­
sumers’ distrust and uncertainty (Filieri et al., 2015). According to the
source credibility theory, source credibility provides a huge influence on
message acceptance; furthermore, readers’ intentions and behaviors,



such as purchase decisions, intention to revisit, and willingness to share,
are influenced by source credibility as well (Ayeh, 2015; Fan et al., 2018;
Hautz et al., 2014; Hsieh and Li, 2020; Mariani et al., 2019). In this
research, we attempt to explore how source credibility influences con­
sumers’ information processing in the online review context.

This study uses the dual-process theory, particularly the ELM, as the
conceptual foundation to investigate how customers process the infor­
mation in online reviews based on the level of credibility of the reviews,
which is measured through the level of online review manipulation.
According to the ELM, individuals can process the information of
communication with varying levels of elaboration that is leveraged by
different motivations or willingness to engage in information (Turner
et al., 2011). Then, the motivation level can depend on individuals’
choice of which source they will use. For instance, if individuals choose
more credible sources to read reviews, they are likely to have higher
motivations to seek or process information than those who prefer a
source with lower credibility. Then, under the conditions of high moti­
vation, individuals are more likely to perform rigorous information
evaluation, so they use the central processing that entails a relatively
high degree of cognitive effort. In other words, when review readers
select highly credible sources with limited risk of review manipulation,
they tend to elaborate on information through careful attention, deep
and critical thinking, and intensive reasoning. For instance, individuals
who seek information from more credible sources might devote more
attention to reviews with analysis or critique. In the case of movie re­
views, some reviewers posit an explanation on specific aspects of a
movie, such as hidden, symbolic meanings in the movie.

In contrast, when individuals read reviews in a source with low
credibility that can be easily exposed to manipulation, they tend to have
a lower motivation to evaluate information. In other words, they are
likely to avoid relying on reviews from such sources (Luca and Zervas,
2016). With a lower level of motivation, individuals then are more likely
to use peripheral processing such as easily noticed and understood cues
in reviews with relatively less cognitive effort. For instance, they process
information unrelated to the stimulus’s logical quality, such as simple
movie summaries. For the movie industry, some reviewers provide a
general description on a movie, which the movie distributors already
provide. In this case, review readers do not need to process the infor­
mation with rigorous evaluation. Based on the dual-process theory, we
argue that individuals process information differently according to the
levels of source credibility that they choose. Therefore, the following
hypotheses are put forward:


**H2a** . _Online review readers exposed to credible reviews will be more_
_affected by in-depth movie content analysis._


**H2b** . _Online review readers exposed to fake reviews will be more affected_
_by superficial information about movie content._


**3.** **Empirical approach**


_3.1._ _Data description_


To explore the textual characteristics and consequences of fake re­
views, we collected online reviews for movies from [Naver.com, the](http://Naver.com)
leading portal website in South Korea. The search engine market share
[of Naver.com in 2020 is about 63 % in Korea.](http://Naver.com) [2 ] We selected the top 50
financially successful movies in South Korea every year from 2017 to
2019. Then, we collected movie information, including online reviews
[written in Korean for 150 movies from Naver.com. Each online review](http://Naver.com)

consists of review ratings and textual content. We excluded movies that
had run for 5 weeks in movie theaters to analyze the impact of the
promotional periods in the movie industry. So, the final dataset includes
139 movies. Based on the online review data, we merged daily box office


2 [https://www.fntoday.co.kr/news/articleView.html?idxno=233242.](https://www.fntoday.co.kr/news/articleView.html?idxno=233242)



3


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



revenue data from the Korean Film Council. [3 ]


_3.1.1._ _Summary statistics of individual-level online reviews_
[Naver.com](http://Naver.com) provides prospective customers with two types of re­
views: viewer-type, and netizen-type. If a customer posts a review after
booking a movie ticket through the, a review posted by this customer is
classified as a viewer-type review. Otherwise, it is categorized as a
netizen-type review. The netizen-type review refers to the reviews that
anyone can share their opinions on a movie without verifying their
movie tickets. In other words, netizen-type reviews are vulnerable to
review manipulation (Mayzlin et al., 2014). Therefore, netizen-type
reviews have a lower level of credibility. In sum, viewer-type reviews
only include the reviews posted by movie viewers. In contrast, netizentype reviews include the reviews posted by movie viewers, review ma­
nipulators, and prospective customers who have not yet watched the
movie. Table 1 shows the summary statistics of the ratings for the
viewer- and netizen-type reviews. The average review rating of netizentype reviews is significantly lower than that of viewer-type reviews
(7.69 Netizen-type _<_ 8.74 Viewer-type ). In line with Mayzlin et al. (2014),
which found unverified reviews to be more extreme, netizen-type re­
views display more extreme ratings, such as 10 or less than or equal to 4.
Table 2..


_3.1.2._ _Summary statistics of weekly online reviews_
To merge individual online review data with daily box office data,
we aggregate the individual online review data into daily data. The
average daily rating of netizen-type reviews was 7.50, while that of
viewer-type reviews was 8.44. The average of daily posted netizen-type
reviews was 47.11, but that of daily posted viewer-type reviews was
137.53. The review volume of netizen-type considerably exceeds that of
viewer-type and this might be due to the fact that [Naver.com](http://Naver.com) allows
anyone to post their online reviews for movies without purchasing
movie tickets on the site and those reviews are categorized as netizentype reviews. According to prior literature (Ma et al., 2019), review
manipulation concentrates on the first two weeks after movie release in
South Korea. There remain no significant incentives to be engaged in
manipulating online reviews because box office revenue decreases
significantly after the two weeks after the release date. Due to this, we
split the sample period into the “promotional period (the first two weeks


**Table 1**

Summary statistics of individual online reviews.


Netizen-type Viewer-type



**Table 2**

Summary statistics of weekly online reviews.


Netizen-type Viewer-type


Daily review rating 7.50 8.44
Daily number of posted reviews 137.53 47.11


Promotional period Promotional period
Daily review rating 7.73 8.53
Daily number of posted reviews 284.02 78.30


Post-period Post-period
Daily review rating 7.34 8.38
Daily number of posted reviews 37.57 25.70


after release, from week 1 to week 2)” and “post period (the last three
weeks, from week 3 to week 5)”. For the first two weeks, the average
daily rating of daily posted netizen-type reviews was 7.73, decreasing to
7.34 during the post-period. The same phenomenon also happens to
viewer-type reviews. The average daily rating of viewer-type reviews
was 8.53, dropping to 8.38 during the post-period.


_3.1.3._
_Summary statistics of weekly box office revenue_
Table 3
shows summary statistics of weekly box office revenue. For
five weeks, the log-transformed box office revenue is 19.16, and the logtransformed number of moviegoers is 10.18. The values of the two
dropped during the post-period compared to those during the promo­
tional period.


_3.2._ _Mining the characteristics of textual content_


To explore different characteristics between less credible and cred­
ible reviews, this paper attempts to find both less-demanding cues (pe­
ripheral route) and the cues that require careful attention and deep
thinking with cognitive efforts (central route) from the textual content in
online reviews. We use two different measures to distinguish online
reviews aligned with the central vs peripheral routes. First, we use the
semantic similarity between online reviews and movie summaries that
are released to the public before the movie release date to measure the
level of information processing of review readers. This measure refers to
whether online reviewers copy the movie summary, which represents
the superficial information that can be understood without sufficient
effort (peripheral route). Second, we adopt topic analysis using Latent
Dirichlet Allocation. This analysis can classify online reviews that
include an in-depth analysis of topics which need to use the central route
to receive the messages.


_3.2.1._ _Semantic similarity analysis_
Movie interest parties are known to hire viral marketing companies
in South Korea. Those companies are known to use macro-programs to
generate manipulated online reviews. [4 ] They intend to increase box of­
fice revenue by manipulating online reviews. To do this, they have to
make the manipulated reviews not distinguishable from credible re­
views. This phenomenon has also been observed by Lappas (2012), who


**Table 3**
Summary statistics of box office revenue.

log(box office revenue) log(the number of moviegoers)


Sample period 19.16 10.18
Promotional period 20.87 11.86
Post period 18.02 9.06



Average of
Review Ratings


Distribution of

ratings



7.69 Average of
Review Ratings



8.74



Freq. Percent Distribution Freq. Percent



1 184,892 14.05 1 6,333 1.00

2 52,191 3.97 2 5,138 0.81

3 13,155 1.00 3 3,019 0.48

4 29,579 2.25 4 7,293 1.15

5 24,354 1.85 5 10,937 1.73

6 49,451 3.76 6 32,771 5.19

7 36,861 2.80 7 33,780 5.35

8 83,518 6.35 8 127,962 20.25

9 83,621 6.35 9 85,673 13.56

10 758,395 57.63 10 319,027 50.48
Total 1,316,017 100.00 Total 631,933 100.00



3 The Korean Film Council is a special organization established in 1973,
which is delegated by by the Ministry of Culture, Sports and Tourism, the ROK
government. It plays the role of improving the quality of Korean films and
therefore growing the film industry. 4 [https://m.cine21.com/news/view/?mag_id=90596.](https://m.cine21.com/news/view/?mag_id=90596)


4


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



showed that manipulated reviews tend to look as similar as possible to
credible reviews so that they could go unnoticed by review readers. For
instance, manipulators can copy a movie summary, which is usually
open to the public from the movie release, to pretend that they watch a
movie to increase the credibility of their reviews. However, the infor­
mation reflected in the reviews tends to be superficial rather than
include personal experiences. To capture this aspect, we examine the
semantic similarity between online reviews and movie summaries to
distinguish the characteristics of manipulated reviews.

To examine the similarity, we use textual embedding techniques.
First, we apply a pre-trained word embedding technique, the fastText
word embedding technique (Facebook I, 2016; Bojanowski et al., 2017;
Joulin et al., 2016) for Korean to vectorize all words. fastText is a neural
network-based learning model that is relatively novel in the marketing
field (Alantari et al., 2021). It was originally created by Facebook’s AI
research lab, and it allowed us to build a machine-learning algorithm to
obtain a vector representation of tokens in the text for diverse languages,
including Korean. By using fastText word embedding, words in both
reviews and movie summaries are converted into 300-dimensional

vectors. Then, we use the cosine similarity, a popular similarity mea­
sure (Zhelezniak et al., 2019), to quantify how similar reviews are with
the movie summary. We calculate cosine similarity between two-word
vectors across online reviews and movie summaries. As a result, we

obtain the cosine similarities as a measure to examine the semantic

similarity between online reviews and movie summaries. Based on the
analysis, we create a binary variable: semantic similarity. If the semantic
similarity score is greater than the average semantic similarity score,
then the semantic similarity variable gets 1. Otherwise, it gets 0.


_3.2.2._ _Topic modeling - Latent Dirichlet Allocation_
To capture diverse interests or topics in online reviews, we conduct
topic modeling using the Latent Dirichlet Allocation (LDA) technique
(Blei et al., 2003). LDA is a popular method for topic discovery (Cal­
heiros, Moro, & Rita, 2017; Jelodar et al., 2019; Mariani and Baggio,
2022 Jacobs
), which has been the most applied in the marketing field (
et al., 2016; Puranam et al., 2017; Tirunillai and Tellis, 2014). This
method has the potential to gather words that reflect topics of latent
interest to marketers (Büschken and Allenby, 2016). In particular, the
method is widely used to examine online reviews because there is no
assumption about text structure or grammar (Blei, 2012), so it can
embody unstructured text data. Also, the model is useful for analyzing
and organize an extensive amount of data into the limited number of
discovered topics (Blei, 2012). Therefore, we apply the LDA model to
extract different movie review topics in the online reviews analyzed.

The LDA model assumes that there are a limited number of latent

topics that appear across textual documents that are represented by
online reviews in our dataset. Each document is a mixture of topics, and
each topic is considered as a discrete probabilistic distribution of mul­
tiple words. In other words, there exists a dictionary of words for all
documents, and the distribution of words used characterizes each topic.
In particular, the words with higher probability are used to define the
latent topics. Topic modeling is applied to each review as a document.
For each document, we constructed a dictionary reporting how many
words and how many times such words appear. Then, we identified the
words occurring in each topic and their relative weights. The documents
are subsequently assigned to the part of a particular topic that has the
highest probability based on the analysis.

To identify the appropriate topic number, we use one of the metrics
for evaluating the topic model, the coherence score. We selected the
number 16 as the threshold input for topic modeling based on the
coherence scores. Table 4 presents the topic modeling results (translated
from Korean into English), with the top 10 words in decreasing order of
posterior probability of being in the 16 topics. Based on the review
characteristics and the conceptualization of word-of-mouth literature,
we interpret the topics and name each topic. For instance, the terms
belonging to topic number 2 include “action,” “in-between,” “one,”



**Table 4**
Topic Classification.


**ID** **Group**

**Name**



**Topic Name** **Topic**
**proportion**
**(%)**



**Keywords**



1 Impression Regret 0.0797 watch, first, image,
theater, regret,
cookie, cinema, today,
release, not-watch
2 Impression Satisfaction 0.0461 movie, life, best, most,
awhile, meaning,
entertainment, recent,
nowadays, rightly
3 Movie story Story-laughing 0.068 action, in-between,
analysis point one, story, not-really,



3 Movie story Story-laughing 0.068 action, in-between,
analysis point one, story, not-really,

laugh, character,
comic, appeal,
dialogue
4 Movie story Connection with 0.0811 history, our, heart,
analysis history now, truth, country,



Story-laughing
point



4 Movie story Connection with 0.0811 history, our, heart,
analysis history now, truth, country,

period, if, for, Korea
5 Impression Aftertaste 0.0583 last, movie, scene,
tear, really, continue,
goose-bump,
aftertaste, memory,

mood

6 Evaluation - No fun 0.0504 movie, just, degree,
Negative no-fun, self, strange,



Connection with

history



6 Evaluation - No fun 0.0504 movie, just, degree,
Negative no-fun, self, strange,

because, level,
audience, feminist
7 Evaluation - Worst evaluation 0.0634 person, rating,
Negative understand, part-time,



7 Evaluation - Worst evaluation 0.0634 person, rating,
Negative understand, part-time,

worst, watch, thismovie, because, trash,

review

8 Movie Movie direction 0.0638 director, directing,

director



8 Movie Movie direction 0.0638 director, directing,
director film, Korea,

likelihood, Koreanmovie, subject,
forced, new-school,
comedy
9 Actors Acting/Chemistry 0.0914 acting, actor,
performance,
Hyunbin, Dongsuk
Ma, Haehin Yoo,
Gangho Song,
chemistry, leadingactor, Woosung Jung
10 Particular Marvels 0.0746 as-expected,
movie - expectation, marvels,
marvel series, next,



10 Particular Marvels 0.0746 as-expected,
movie - expectation, marvels,
marvel series, next,

disappointment, hero,
this, avengers,

convenience

11 Particular Disney 0.0602 touching, interest, formovie - all, kid, music, song,
Disney really, flavor, Disney,



11 Particular Disney 0.0602 touching, interest, formovie - all, kid, music, song,
Disney really, flavor, Disney,

movie

12 Movie story Connection to 0.0542 reality, story, mainanalysis reality character, sympathy,



12 Movie story Connection to 0.0542 reality, story, mainanalysis reality character, sympathy,

love, woman, Korean,
man, look, human
13 Evaluation - Recommendation 0.0527 authentic, best, really,

Positive



Connection to

reality



13 Evaluation - Recommendation 0.0527 authentic, best, really,
Positive completely, big-hit,

very-fun, this-year,
stronglyrecommended, of-all
time, masterpiece
14 Movie story Story 0.0589 story, feeling, content,
analysis development surprised, moment,



14 Movie story Story 0.0589 story, feeling, content,
analysis development surprised, moment,

little, development,
ending, beginning,

little

15 Evaluation - Second trial 0.052 thinking, movie,

Positive recommendation



Story
development



Second trial

recommendation



0.052 thinking, movie,
again, one-more,
recommend, watch,



( _continued on next page_ )



5


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



**Table 4** ( _continued_ )


**ID** **Group**

**Name**



**Topic Name** **Topic**
**proportion**
**(%)**



**Keywords**



family, really, mother,

friend

16 Impression Immersion 0.0452 time, movie,
immersion, for-wholetime, story, originalwork, degree,
concentration,
different, tension


“story,” “not-really,” “laugh,” “character,” “comic,” “appeal,” “dia­
logue,” which could be summarized as laughing points in movie story.
Then, we group several topics into a limited number of groups. First, we
find that a substantial number of topics focus on movie story analysis (e.
g., story laughing point, connecting with history, connecting with the
reality, and story development). Second, several topics focus on evalu­
ations, including both positive and negative feedback. We expect that
these two topics could be associated with review manipulation because
movie story analysis is associated with deeper experiences of review
posters, and therefore, it is beyond a simple story description (semantic
similarity). Review manipulation could consist more likely of a simple
story description. In addition, review manipulation could focus more on
evaluations, including sentiment. Therefore, we focus on the two groups
of topics to distinguish manipulated reviews from credible reviews.
Based on the topic modeling, we create two binary variables, movie
story analysis, and movie evaluation. If a review includes movie story
analysis in the review, then the review gets 1. Otherwise, it gets 0.
Similarly, we define movie evaluation as a binary variable.


_3.2.3._ _Summary statistics of the characteristics of textual content_
Based on Semantic Similarity Analysis and Topic Modeling Analysis,
we pay attention to the 3 topics as mentioned above: movie story
analysis, movie evaluation, and movie similarity. After coding these
variables, we aggregate these individual data into daily data. By doing
this, we create three percentage variables. For example, suppose 10
movie story analysis-related reviews were posted for a day by netizens,
and there were 100 reviews posted on the day by netizens. In that case,
the movie story analysis percentage is 0.01 (10/100). Because the two
analyses are administered independently, the total percentage of the
three variables could be over 100.


Table 5 shows the comparison between netizen-type and viewer-type
reviews regarding the characteristics of textual content. Movie similarity
reflects the extent to which review posters copy the released movie
summary. In other words, high movie similarity represents superficial
knowledge of the movie contents without thorough analysis and eval­
uations. Netizen-type reviews are more likely to include this type of
textual characteristic. However, we cannot confirm that the movie
similarity percentage of netizen-type reviews is greater than that of
viewer-type reviews from the table (Netizen-type Movie similarity percentage
= 0.55, Viewer-type Movie similarity percentage = 0.55, respectively). This is
different from our expectations (H1a). However, our hypothesis could
be supported when we find that there exists a significant difference in
the percentage during the promotional period because fake reviews are
mostly posted during the period. To confirm this, we use a more so­
phisticated approach in the next section (4.1). The movie story analysis


**Table 5**

Summary statistics of the characteristics of textual content.


Netizen-type Viewer-type


Movie similarity percentage 0.55 0.55
Movie story analysis percentage 0.24 0.28
Movie evaluation percentage 0.23 0.18



percentage of netizen-type reviews is about 24 %, while that of viewertype reviews is about 28 %. We further analyze these aspects in the
empirical analysis by considering time- and movie-specific effects.
Considering the fact that movie story analysis is associated with deeper
experiences of review posters, it is expected to add what is expected
here. The movie evaluation percentage of netizen-type reviews is greater
than that of viewer-type reviews (Netizen-type Movie evaluation percentage =
0.23 _>_ Viewer-type Movie evaluation percentage =.18 Viewer-type ). These three
variables are used for the dependent variables in Study 1.


**4.**
**Empirical studies and findings**


_4.1._ _Study 1: Characteristics of fake reviews_


_4.1.1._
_Model specification_
In the first study (Study 1), we explore the characteristics of fake
reviews. To do this, we exploit the differences in the characteristics of
textual content between viewer-type and netizen-type reviews. Mayzlin
[et al. (2014) used the difference in review policy between Expedia.com](http://Expedia.com)
and [TripAdvisor.com](http://TripAdvisor.com) to explore promotional reviews. [Expedia.com](http://Expedia.com)
adopts a review policy to only allow customers who book a hotel
room via the website to share their experiences with hotel services. On
[the other hand, TripAdvisor.com implements a review policy allowing](http://TripAdvisor.com)
anyone who wants to post opinions to post reviews. Due to the difference
[in the online review policy, online reviews on TripAdvisor.com are more](http://TripAdvisor.com)
vulnerable to review manipulation. To capture the impacts of review
manipulation, they exploit the differences in the characteristics of online
reviews such as review ratings or extreme reviews posted on [TripAd](http://TripAdvisor.com)
[visor.com and Expedia.com. Following the lead of their model specifi­](http://TripAdvisor.com)
cation, we develop the following model specification:



where i is a movie and t is a day. Specific content includes the three
types of characteristics of textual content: movie story analysis, movie
evaluation, and movie similarity. Controls include monthly and day of
the week dummy variables to control seasonality and day of the week
effects on the online review generation. δ i controls movie-level hetero­
geneity. ε it is a random error.

As is mentioned previously, review manipulation concentrates on the
first two weeks in South Korea (Ma et al., 2019). Considering the dy­
namics of review manipulation, we use the promotional period (first two
weeks) as the independent variable. In the above model specification,
the estimated coefficient of the constant represents the difference in the
specific content between netizen- and viewer-type. Our primary interest
is placed on the estimated coefficient of the promotional period. This
would capture the impact of review manipulation on the difference in
the textual content between netizen- and viewer-type reviews.


_4.1.2._ _Empirical results_
Table 6
shows the empirical results of the model specification in Equ.
(1). Across the three columns (1), (2), and (3), we include the same
control variables such as time-fixed (monthly dummy and day of the
week dummy variables) and movie-fixed effects (movie-fixed dummy
variables). The estimated coefficients of the constants over the three
columns turn out to be insignificant (β Constant = -0.050, _p-value >_ 0.10,
β Constant = -0.064, _p-value >_ 0.10, and β Constant = 0.017, p-value _<_ 0.01,
respectively). This means that there exist no differences in the three
textual characteristics between netizen- and viewer-type reviews. On the
other hand, in the first column (1), we explore the impacts of the pro­
motional period on the differences in the percentage of movie similarity.
As expected, the promotional period’s estimated coefficient is signifi­
cantly positive (β Promotional Period = 0.012, _p-value <_ 0.01). This shows
that netizen-type reviews are more likely to include movie similarity in



# _ofSpecificContent_ _[Netizen]_ _it_



− [#] _[o][f][S][p][eci][f][icContent]_ _it_ _[Viewer]_



_it_
_TotalReview_ _[Viewer]_



_it_
_TotalReview_ _[Netizen]_



_it_ _it_

= _α_ + _β_ - _PromotionalPeriod_ _it_ + _γ_ ′ 


_it_



′ - _Controls_ _it_ +



∑



_δ_ _i_ + _ε_ _it_ (1)



6


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



**Table 6**

The impacts of review manipulation on online reviews.



Difference in

percentage of
movie similarity
(1)



Difference in

percentage of
movie story
analysis (2)



Difference in

percentage of

movie evaluation

(3)



**Table 7**

–
The impacts of review manipulation on online reviews (1st and 2nd promo­
tional period).



Difference in

percentage of
movie similarity
(1)



Difference in

percentage of
movie story
analysis (2)



Difference in

percentage of

movie evaluation

(3)



Promotional


Period



0.012** (0.005) -0.008 (0.005) 0.014*** (0.004)



Constant -0.050 (0.046) -0.064 (0.044) 0.017 (0.040)
Monthly Included Included Included

Dummy



Promotional


Period-1


Promotional


Period-2



0.015*** (0.005) -0.005 (0.005) 0.008* (0.005)


0.010* (0.006) -0.010*(0.005) 0.020***(0.005)



Day of the


Week

Dummy

Movie-fixed

effects



Included Included Included


Included Included Included



Constant -0.050(0.046) -0.063 (0.044) 0.017(0.040)
Monthly Included Included Included


Dummy



Included Included Included


Included Included Included



Observations 4,646 4,646 4,646
R [2 ] 0.038 0.065 0.075

Notes: ***/**/* indicates significance at the 1%/5%/10% level. Standard errors
are in parentheses.


the textual content during the promotional period. Different from the
expectation on movie story analysis, review manipulation is not
apparent with this aspect (β Promotional Period = -0.008, _p-value >_ 0.10) in
the second column (2). Netizen-type reviews tend to include more movie
evaluation in the textual content during the promotional period
(β Promotional Period = 0.014, _p-value_ _<_ 0.01) in the third column (3).
Because review manipulation could concentrate on either the first week
or the second week, we explore the differential impact of the promo­
tional period in the next table (Table 7) by splitting the period into two:
promotional period 1 and 2.

Table 7 shows the differential impacts of two promotional periods on
the differences in the differences in the percentages of movie similarity,
movie story analysis, and movie evaluation. In the first column (1), the
estimated coefficients of the promotional periods are both significantly
positive (β Promotional Period 1 = 0.015, _p-value <_ 0.01, β Promotional Period 2 =
0.010, _p-value <_ 0.10, respectively). In the case of movie story analysis,
the estimated coefficient of promotional period 2 is significantly nega­
tive (β Promotional Period 2 = -0.010, _p-value <_ 0.10), though the estimated
coefficient of promotional period 1 is insignificantly negative
(β Promotional Period 1 = -0.005, _p-value >_ 0.10). As confirmed in Table 6,
the estimated coefficients of promotional periods are significantly pos­
itive (β Promotional Period 1 = 0.08, _p-value_ _<_ 0.10, β Promotional Period 2 =
0.020, _p-value <_ 0.01, respectively). The degree of the impacts becomes
more evident in the promotional period 2. From the empirical results,
we can conclude that review manipulation would happen by increasing
the characteristics of textual content such as movie similarity and movie
evaluation reflected in online reviews, while manipulated reviews
would seem to reflect superficial or limited information in the textual
content in terms of movie story analysis.


_4.2._ _Study 2: Consequences of fake reviews_


_4.2.1._
_Model specification_
In Study 2, we explore how the characteristics of texual content
would affect box office revenue. To do it, we develop our empirical
Duan et al.
model specification (dynamic regression model) based on
(2008):



Day of the


Week

Dummy

Movie-fixed

effects



Observations 4,646 4,646 4,646
R [2 ] 0.038 0.065 0.076

Notes: ***/**/* indicates significance at the 1%/5%/10% level. Standard errors
are in parentheses.


where _i_ is a movie and _t_ is a day. Controls contain monthly and day of
the week dummy variables to control seasonality and day of the week
effects on box office revenue. δ i controls movie-level heterogeneity. And
ε it is a random error.

According to prior literature (Duan et al., 2008), because responding
to the change in demand takes time, including the previous box office in
the equation for box office revenue would be appropriate. However, the
above model specification includes an endogenous lagged variable. If we
use ordinary least squares estimation, it causes an endogeneity issue in
the estimation. Therefore, we use Arellano and Bond GMM-based esti­
mation to address the endogeneity issue. In Eq. (2), we assume that
review consumers use both netizen-type and viewer-type reviews as
primary information sources. Because of the assumption, we include
textual characteristics such as movie story analysis as independent
variables. Together with these, we control lagged daily ratings and the
number of posted reviews based on Duan et al. (2008).

The estimated coefficient of viewer movie analysis percentage is
significantly positive (β Viewer movie story analysis percentage = 0.173, _p-value_
_<_ 0.01). In contrast, that of netizen movie analysis percentage is not
significant (β Viewer movie story analysis percentage = 0.006, _p-value >_ 0.10) in
column (1). This means that deep experiences reflected in viewer-type
reviews have a positive impact on box office revenue, but those in
netizen-type reviews do not have any significant impact on the revenue.
This is also confirmed in column (2) considering the number of movie­
goers as the dependent variable. The estimated coefficient of viewer
movie analysis percentage is significantly positive (β Viewer movie story

analysis percentage [=] [0.166, ] _[p-value ]_ _[<]_ [0.01), but that of netizen movie ]
analysis percentage is insignificant (β Viewer movie story analysis percentage =
0.019, _p-value >_ 0.10).
The estimated coefficients of viewer and netizen movie evaluation
percentage are both significantly positive (β Viewer movie evaluation percentage
= 0.198, _p-value <_ 0.01, β Viewer movie evaluation percentage = 0.107, _p-value_
_<_ 0.01, respectively) in column (1). In column (2), where the number of



log(Box office revenue) _it_ = _α_ + _β_ 1 *log(Box office revenue) _it_ − 1 + _β_ 2 - _Dailyrating_ _it_ − 1 + _β_ 3 *log( _Numberofreviews_ ) _it_



∑



_δ_ _i_ + _ε_ _it_



+ _β_ 4 - _Contentpercentage_ _it_ + _β_ 5 - _Evaluationpercentage_ _it_ + _β_ 6 - _Similaritypercentage_ _it_ + _γ_


7



′ - _Controls_ _it_ +



(2)


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



moviegoers is the dependent variable, the positive impacts of movie
evaluation are also confirmed.

Differently from these, the estimated coefficient of viewer movie
similarity percentage is significantly negative (β Viewer movie similarity per­

centage [=][ -0.139, ] _[p-value ][<]_ [ 0.01), meaning that if the percentage of movie ]
similarity reflected in online reviews increases, it has a negative impact
on box office revenue. As is expected, review consumers expect deeper
information rather than superficial information from the more credible
information source. However, the estimated coefficient of netizen movie
similarity is significantly positive (β Viewer movie similarity percentage = 0.042,
_p-value <_ 0.01), showing that review consumers demand a lower level of
information depth from less credible information sources. These phe­
nomena are also confirmed in the second column (2).

Interestingly, an increase in netizen daily ratings has a negative
impact on box office revenue (β Viewer daily rating = -0.012, _p-value <_ 0.01)
but the impact of viewer daily ratings is not significant in column (1). In
column (2), the positive impact of an increase in viewer daily ratings is
confirmed (β Viewer daily rating = 0.035, _p-value <_ 0.01). On the other hand,
the numbers of posted viewer and netizen type reviews have positive
impacts on box office revenue (β Viewer daily number = 0.121, _p-value_ _<_
0.01, β Netizen daily number = 0.153, _p-value <_ 0.01, respectively). It is also
confirmed in column (2), where the number of moviegoers is the
dependent variable.

For further analysis, we consider cumulative ratings instead of daily
Table 9 because review consumers
ratings in the first column (1) of
could use cumulative review ratings rather than daily review ratings as
the review valence. All estimated coefficients are basically the same as
those of Table 8
, except that the estimated coefficient of netizen cu­
mulative ratings is insignificant.

The second column assumes that review consumers could place
different weights between credible and less credible information sour­
ces. That is, review consumers could place a higher weight on credible
information sources (viewer-type reviews) than less credible informa­
tion sources (netizen-type reviews). They could only consider the dif­
ferences between viewer-type and netizen-type reviews regarding
review characteristics. Therefore, we create different variables between
netizen-type and viewer-type reviews.

Based on the model specification, the estimated coefficient of viewer
movie story analysis percentage turns out to be significantly positive


**Table 8**
The impact of online reviews on box office revenue.



**Table 9**
The impact of online reviews on box office revenue.

log(box office
revenue) it (1)



log(box office
revenue) it (2)



log(box office revenue) it-1 0.785*** (0.011) 0.801***
(0.013)
Viewer_cumlative_rating it-1 -0.205 (0.185) Not included
Netizen_cumulative_rating it-1 0.073 (0.236) Not included
Viewer_daily_rating it-1 Not included 0.014** (0.007)
dif(Viewer_daily_rating it-1 - Not included -0.015***



dif(Viewer_daily_rating it-1 - Not included -0.015***

Netizen_daily_rating it-1 ) (0.003)

log(Viewer_daily_Num) it 0.127*** (0.008) 0.271***
(0.014)
log(Netizen_daily_Num) it 0.171*** (0.010) Not included
dif(log(Viewer_daily_Num) it - log Not included 0.153***

(Netizen_daily_Num) it ) (0.009)

Viewer_movie story analysis_percentage it 0.181*** (0.021) 0.197***
(0.037)
Netizen_movie story analysis_percentage it -0.006 (0.028) Not included
dif(Netizen_movie story Not included 0.011 (0.028)



Netizen_daily_rating it-1 )



(Netizen_daily_Num) it )



Not included 0.011 (0.028)



log(box office
revenue) it (1)



log(the number of
moviegoers) it (2)



log(box office revenue) it-1 0.792*** (0.012) 0.782*** (0.008)
Viewer_daily_rating it-1 0.026 (0.005) 0.035*** (0.007)
Netizen_daily_rating it-1 -0.012*** (0.003) -0.013*** (0.003)
log(Viewer_daily_Num) it 0.121*** (0.007) 0.125*** (0.007)
log(Netizen_daily_Num) it 0.153*** (0.009) 0.164*** (0.008)
Viewer_movie story 0.173*** (0.022) 0.166***(0.019)

analysis_percentage it



Netizen_movie story

analysis_percentage it

Viewer_movie

evaluation_percentage it

Netizen_movie

evaluation_percentage it

Viewer_movie

similarity_percentage it

Netizen_movie

similarity_percentage it



0.006 (0.033) 0.019(0.029)


0.198***(0.027) 0.202***(0.024)


0.107***(0.025) 0.109***(0.021)


-0.139***(0.023) -0.161***(0.024)


0.042***(0.017) 0.041*** (0.014)



Monthly Dummy Included Included
Day of the Week Dummy Included Included

Constant Included Included

Observations 4,285 4,285

Wald chi2 40560567.625 4343337.457

Probability _<_ 0.01 _<_ 0.01

Notes: ***/**/* indicates significance at the 1%/5%/10% level. Standard errors
are in parentheses.



analysis_percentage it   - Viewer_movie
story analysis_percentage it )

Viewer_movie evaluation_percentage it 0.247*** (0.025) 0.350***
(0.037)
Netizen_movie evaluation_percentage it 0.115***(0.020) Not included
dif(Netizen_movie evaluation_percentage it Not included 0.134***(0.022)

  - Viewer_movie evaluation_percentage it )

Viewer_movie similarity_percentage it -0.185***(0.020) -0.121***
(0.028)
Netizen_movie similarity_percentage it 0.046**(0.021) Not included
dif(Netizen_movie similarity_percentage it  - Not included 0.033*(0.018)

Viewer_movie similarity_percentage it )

Monthly Dummy Included Included
Day of the Week Dummy Included Included

Constant Included Included

Observations 4,289 4,285

Wald chi2 12418899.471 6507377.655

Probability _<_ 0.01 _<_ 0.01

Notes: ***/**/* indicates significance at the 1%/5%/10% level. Standard errors
are in parentheses.


(β Viewer movie story analysis percentage = 0.197, _p-value <_ 0.01). But the dif­
ference in the movie story analysis percentage between netizen-type and
viewer-type reviews is insignificant (β dif(Netizen_movie story analysis_percentage
Viewer_movie story analysis_percentage) [=] [0.011, ] _[p-value ]_ _[>]_ [0.10). This means ]
that when netizen movie story analysis percentage exceeds viewer
movie story percentage, it has no impact on box office revenue.

The estimated coefficient of viewer movie evaluation percentage is
significantly positive (β Viewer movie evaluation percentage = 0.350, _p-value <_
0.01). The difference between netizen movie evaluation percentage and
viewer movie evaluation percentage is also significantly positive (β dif

(Netizen_movie evaluation_percentage-Viewer_movie evaluation_percentage) [=] [0.134, ] _[p- ]_
_value <_
0.01). Movie evaluation has a positive impact on the box office
irrelevant of the types of reviews. On the other hand, viewer movie
similarity has a negative impact on box office revenue (β Viewer movie

similarity percentage [=] [-0.121, ] _[p-value ]_ _[<]_ [0.01). However, when the per­]
centage of netizen-type reviews exceeds that of viewer-type reviews, it
has a positive impact on box office revenue (β dif(Netizen_movie

similarity_percentage-Viewer_movie similarity_percentage) [=][ 0.033, ] _[p-value ][>]_ [ 0.10). ]


**5.** **Conclusion and discussion**


_5.1._
_Discussion of key findings_


In this study, we explore the different impacts of textual character­
istics reflected in online reviews on box office revenue depending on the
level of source credibility. First, we examine how fake reviews (i.e.,
likely manipulated reviews) are different in the textual characteristics
from credible customer reviews. To do this, we analyze online reviews
for movies posted on [Naver.com, a leading portal website in South](http://Naver.com)
Korea. Considering the importance of review volume and credibility, the



8


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



website tries to increase review volume while maintaining review
credibility by adopting a review policy (Ma et al., 2020), which allows
two types of customer reviews, viewer-type (more credible) and netizentype (less credible). Netizen-type reviews are known to be vulnerable to
review manipulation, and therefore they are considered less credible
(Ma et al., 2019). As a result, our findings show that netizen-type re­
views tend to be more superficial in information sharing, while viewertype reviews are more likely to contain in-depth movie analysis. Second,
we find that the level of source credibility plays a different role in
determining customer decision making. In other words, different levels
of source credibility would affect box office revenue differently. As
authentic (i.e., credible) reviews contain more in-depth analysis of
movie content, they have a positive impact on box office revenue; On the
other hand, fake reviews (i.e., likely manipulated reviews) include more
superficial information about a movie, and this has a negative impact on
box office revenue. On the other hand, even when less credible reviews
(netizen-type) contain superficial information, they positively impact
box office revenue.


_5.2._ _Theoretical implications_


This study provides significant theoretical contributions. First, our
study is the first to explore how online review consumers process in­
formation differently when they are exposed to different levels of source
credibility. Our findings provide an extension to the literature con­
cerning how credibility changes customer responses (Filieri et al., 2015;
Lee and Lin, 2005). Secondly and related to the previous point, the
findings suggest that source credibility affects what types of cues cus­
tomers focus on before making purchase decisions. In other words, the
degree of influence of textual cues in online reviews would be deter­
mined by the source credibility. We extend the findings of prior litera­
ture concerning the influence of source credibility on the message
(Ayeh, 2015; Fan et al., 2018). Our findings further show that the source
credibility determines which textual characteristics in the message
consumers focus on.. Third, we show that the textual characteristics as
well as the level of source credibility impact customer decision making.
The impacts are determined by the combination between textual char­
acteristics and the level of source credibility. This extends previous
research (Singh et al., 2017) that found that textual characteristics are
closely related to the usefulness of online reviews. Fourth, we conduct an
in-depth investigation of the differences in textual characteristics be­
tween fake and authentic online reviews. Mayzlin et al. (2014) focused
on the differences in quantitative features (such as review ratings) of
online reviews between credible and less credible online reviews to

examine review manipulation. According to Hu et al. (2012), review
manipulation could also happen to textual comments. We, therefore,
extend previous literature (Hu et al., 2012; Mayzlin et al., 2014) by
suggesting that the subtle differences in reviews’ textual characteristics
can bring about different levels of information depth which generates
differentiated consumers’ attitudes, ultimately impacting product
commercial performance.


_5.3._ _Practical and managerial implications_


Our findings provide practical business implications for online re­
view platform managers and customers relying on online reviews,
particularly relevant in the movie industry. First, review platform
managers face increasing difficulty detecting manipulated online re­
views because review manipulators tend to emulate authentic reviews to
avoid detection. Review manipulators are likely to use similar language
to genuine reviews for their credibility (Luppas, 2012; Chen and Chen,

2015
). According to our findings, even when manipulated reviews
contain movie content, the information itself is likely to be non-specific
with only superficial messages. Differently from this, credible reviews
tend to contain more in-depth information that needs thorough
thinking. This means that review platform managers of movie review



websites could successfully develop a detecting method by differenti­
ating authentic reviews from manipulated reviews based on the infor­
mation depth reflected in the textual content. Second, customers relying
on online reviews before purchasing a movie ticket need to know how
credible and less credible reviews are different in the textual content. As

was found by Hu et al. (2012), review manipulation on textual content
would significantly affect consumer purchase decisions because con­
sumers cannot detect manipulation through textual characteristics.
Consumers need to know that manipulated reviews contain superficial
movie content and recommendation. Those reviews are less likely to
include in-depth analysis of movies related to cultural or historical
context. By acknowledging the differences, they could avoid uninformed
and unintended purchase decisions.


_5.4._ _Limitations and future research directions_


Like other research, our study is not free from some limitations.
Consistently with prior literature (Mayzlin, 2014), we assume that the
differences in textual content between credible and less credible reviews

are caused by review manipulation. However, as is mentioned previ­
ously, in our study, less credible reviews could be also posted by pro­
spective customers who have not yet watched the movie. The differences
could be also caused by those prospective reviews. To address this issue,
we sampled the period into “promotional period” and “post period”
based on prior literature (Ma et al., 2018) and find that there are no
differences in textual characteristics between moviegoers and prospec­
tive customers after the promotional period. However, there is no
guarantee that review manipulation only concentrates on the promo­
tional period. A more accurate measure to detect the review manipu­
lation period needs to be developed. Second, to we explore how online
review consumers process information differently when exposed to
different level of source credibility, we use box office revenue. We infer
the impacts of source credibility by relying on the revealed customer
choice (box office revenue). Therefore, in the future experimental
studies might be conducted in order to understand how consumers
perceive different levels of source credibility and respond to them. Such
an experimental approach might potentially reveal if the relationship
between the differences in source credibility mingled with different
textual characteristics and different customers’ reactions. Lastly, the
evaluation of movies reflected in online reviews could be potentially
more subjective than the evaluation of other products because movies
are artistic products (Ulker-Demirel et al., 2018). Therefore, while the
marketing literature has significantly legitimized research on online
reviews in the movie context (Chintagunta et al., 2010), future studies
might seek to validate our findings for other products and in other in­
dustries in future research.


**CRediT authorship contribution statement**


**Jong Min Kim:** Writing – review & editing, Writing – original draft,
Validation, Supervision, Project administration, Methodology, Formal
analysis, Data curation, Conceptualization. **Keeyeon Ki-cheon Park:**
Writing – review & editing, Writing – original draft, Validation, Meth­
odology, Investigation, Formal analysis, Data curation, Conceptualiza­
tion. **Marcello** **M.** **Mariani:** Supervision, Investigation,
Conceptualization, Formal analysis, Project administration, Validation,
Writing - original draft, Writing - review & editing.


**Declaration of Competing Interest**


The authors declare that they have no known competing financial
interests or personal relationships that could have appeared to influence
the work reported in this paper.



9


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



**References**


[Alantari, H. J., Currim, I. S., Deng, Y., & Singh, S. (2021). An Empirical Comparison of](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0005)

[Machine Learning Methods for Text-based Sentiment Analysis of Online Consumer](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0005)
Reviews. _[International Journal of Research in Marketing, 39](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0005)_ (1), 1–19.
[Ayeh, J. K. (2015). Travellers’ acceptance of consumer-generated media: An integrated](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0010)

[model of technology acceptance and source credibility theories.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0010) _Computers in Human_
_[Behavior, 48](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0010)_, 173–180.
[Bart, Y., Shankar, V., Sultan, F., & Urban, G. L. (2005). Are the drivers and role of online](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0015)

[trust the same for all web sites and consumers? A large-scale exploratory empirical](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0015)
study. _[Journal of Marketing, 69](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0015)_ (4), 133–152.
[Banerjee, S., & Chua, A. Y. (2014). A theoretical framework to identify authentic online](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0020)

reviews. _[Online Information Review., 38](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0020)_ (5), 634–649.
[Banerjee, S., & Chua, A. Y. (2017a). Theorizing the textual differences between authentic](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0025)

[and fictitious reviews: Validation across positive, negative and moderate polarities.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0025)
_[Internet Research, 27](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0025)_ (2), 321–337.
[Banerjee, S., & Chua, A. Y. (2017b). Authentic versus fictitious online reviews: A textual](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0030)

[analysis across luxury, budget, and mid-range hotels.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0030) _Journal of Information Science,_
_43_ [(1), 122–134.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0030)
[Blei, D. M., Ng, A. Y., & Jordan, M. I. (2003). Latent dirichlet allocation.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0035) _The Journal of_

_[Machine Learning Research, 3](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0035)_, 993–1022.
[Blei, D. M. (2012). Probabilistic topic models.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0040) _Communications of the ACM, 55_ (4), 77–84.
[Bojanowski, P., Grave, E., Joulin, A., & Mikolov, T. (2017). Enriching word vectors with](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0045)

subword information. _[Transactions of the Association for Computational Linguistics, 5](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0045)_,
[135–146.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0045)

Bresciani, S., Ferraris, A., Romano, M., & Santoro, G. (2021). Shifting Paradigms in

Modern Marketing1. In _Digital Transformation Management for Agile Organizations: A_
_Compass to Sail the Digital World_ . Emerald Publishing Limited.
[Brown, J., Broderick, A. J., & Lee, N. (2007). Word of mouth communication within](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0055)

[online communities: Conceptualizing the online social network.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0055) _Journal of Interactive_
_[Marketing, 21](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0055)_ (3), 2–20.
[Büschken, J., & Allenby, G. M. (2016). Sentence-based text analysis for customer reviews.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0060)

_[Marketing Science, 35](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0060)_ (6), 953–975.
[Calheiros, A. C., Moro, S., & Rita, P. (2017). Sentiment classification of consumer-](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0065)

[generated online reviews using topic modeling.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0065) _Journal of Hospitality Marketing &_
_[Management, 26](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0065)_ (7), 675–693.
[Chaiken, S. (1989). Heuristic and systematic information processing within and beyond](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0075)

the persuasion context. _[Unintended thought](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0075)_, 212–252.
[Chevalier, J. A., & Mayzlin, D. (2006). The effect of word of mouth on sales: Online book](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0080)

reviews. _[Journal of Marketing Research, 43](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0080)_ (3), 345–354.
[Chen, S., & Chaiken, S. (1999). The heuristic-systematic model in its broader context. In](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0085)

S. Chaiken, & Y. Trope (Eds.), _[Dual-process theories in social psychology](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0085)_ (pp. 73–96).
[The Guilford Press.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0085)

Chen, Y. R., & Chen, H. H. (2015, May). Opinion spam detection in web forum: a real

case study. In _Proceedings of the 24th International Conference on World Wide Web_ (pp.
173-183).
[Cox, C., Burgess, S., Sellitto, C., & Buultjens, J. (2009). The role of user-generated content](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0095)

in tourists’ travel planning behavior. _[Journal of Hospitality Marketing & Management,](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0095)_
_18_ [(8), 743–764.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0095)
[Cheung, C. M. Y., Sia, C. L., & Kuan, K. K. (2012). Is this review believable? A study of](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0100)

[factors affecting the credibility of online consumer reviews from an ELM perspective.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0100)
_[Journal of the Association for Information Systems, 13](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0100)_ (8), 618–635.
[Chintagunta, P. K., Gopinath, S., & Venkataraman, S. (2010). The effects of online user](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0105)

[reviews on movie box office performance: Accounting for sequential rollout and](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0105)
aggregation across local markets. _Marketing Science, 29_ (5), 944–957.
[Coursaris, C. K., & Van Osch, W. (2016, July). Exploring the effects of source credibility](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0110)

on information adoption on YouTube. In _[International Conference on HCI in Business,](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0110)_
_[Government, and Organizations](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0110)_ (pp. 16–25). Cham: Springer.
[Cui, G., Lui, H. K., & Guo, X. (2012). The effect of online consumer reviews on new](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0115)

product sales. _[International Journal of Electronic Commerce, 17](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0115)_ (1), 39–58.
[D’Ambra, J., Akter, S., & Mariani, M. (2022). Digital transformation of higher education](http://refhub.elsevier.com/S0148-2963(22)00842-6/optVFhqlLvobq)

[in Australia: Understanding affordance dynamics in e-textbook engagement and use.](http://refhub.elsevier.com/S0148-2963(22)00842-6/optVFhqlLvobq)
_[Journal of Business Research, 149](http://refhub.elsevier.com/S0148-2963(22)00842-6/optVFhqlLvobq)_, 283–295.
[Dellarocas, C. (2006). Strategic manipulation of internet opinion forums: Implications for](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0120)

consumers and firms. _[Management science, 52](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0120)_ (10), 1577–1593.
[Dellarocas, C., Zhang, X. M., & Awad, N. F. (2007). Exploring the value of online product](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0125)

[reviews in forecasting sales: The case of motion pictures.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0125) _Journal of Interactive_
_[Marketing, 21](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0125)_ (4), 23–45.
[Duan, W., Gu, B., & Whinston, A. B. (2008). Do online reviews matter?—An empirical](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0130)

investigation of panel data. _[Decision Support Systems, 45](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0130)_ (4), 1007–1016.
[Dwivedi, Y. K., Ismagilova, E., Hughes, D. L., Carlson, J., Filieri, R., Jacobson, J., …](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0135)

[Wang, Y. (2021). Setting the future of digital and social media marketing research:](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0135)
[Perspectives and research propositions.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0135) _International Journal of Information_
_Management, 59_ [, Article 102168.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0135)
[Evans, J. S. B. (2008). Dual-processing accounts of reasoning, judgment, and social](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0140)

cognition. _[Annual Review of Psychology., 59](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0140)_, 255–278.
[Evans, J. S. B., & Stanovich, K. E. (2013). Dual-process theories of higher cognition:](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0145)

Advancing the debate. _[Perspectives on Psychological Science, 8](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0145)_ (3), 223–241.
[Facebook I (2016). fastText: Library for fast text representation and classification. https](https://github.com/facebookresearch/fastText)

[://github.com/facebookresearch/fastText.](https://github.com/facebookresearch/fastText)
[Fan, A., Shen, H., Wu, L., Mattila, A. S., & Bilgihan, A. (2018). Whom do we trust?](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0155)

[Cultural differences in consumer responses to online recommendations.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0155) _International_
_[Journal of Contemporary Hospitality Management, 30](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0155)_ (3), 1508–1525.
Fei, G., Mukherjee, A., Liu, B., Hsu, M., Castellanos, M., & Ghosh, R. (2021). Exploiting

Burstiness in Reviews for Review Spammer Detection. _Proceedings of the International_



_AAAI Conference on Web and Social Media_, _7_ (1), 175-184. Retrieved from https://ojs.
aaai.org/index.php/ICWSM/article/view/14400.
[Filieri, R., Alguezaui, S., & McLeay, F. (2015). Why do travelers trust TripAdvisor?](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0165)

[Antecedents of trust towards consumer-generated media and its influence on](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0165)
[recommendation adoption and word of mouth.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0165) _Tourism Management, 51_, 174–185.
[Filieri, R. (2016). What makes an online consumer review trustworthy?](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0170) _Annals of Tourism_

_[Research, 58](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0170)_, 46–64.
[Floridi, L. (2018). Artificial intelligence, deepfakes and a future of ectypes.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0175) _Philosophy &_

_[Technology, 31](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0175)_ (3), 317–321.
[Hautz, J., Füller, J., Hutter, K., & Thürridl, C. (2014). Let users generate your video ads?](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0185)

[The impact of video source and quality on consumers’ perceptions and intended](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0185)
behaviors. _[Journal of Interactive Marketing, 28](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0185)_ (1), 1–15.
[Heydari, A., Ali Tavakoli, M., Salim, N., & Heydari, Z. (2015). Detection of review spam:](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0190)

A survey. _[Expert Systems with Applications, 42](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0190)_ (7), 3634–3642.
[Hsieh, J. K., & Li, Y. J. (2020). Will you ever trust the review website again? The](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0195)

importance of source credibility. _[International Journal of Electronic Commerce, 24](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0195)_ (2),
[255–275.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0195)

[Hovland, C. I., Janis, I. L., & Kelley, H. H. (1953).](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0200) _Communication and persuasion_ . Yale

[University Press.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0200)
[Hu, N., Bose, I., Koh, N. S., & Liu, L. (2012). Manipulation of online reviews: An analysis](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0205)

of ratings, readability, and sentiments. _[Decision Support Systems, 52](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0205)_ (3), 674–684.
[Jacobs, B. J., Donkers, B., & Fok, D. (2016). Model-based purchase predictions for large](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0210)

assortments. _[Marketing Science, 35](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0210)_ (3), 389–404.
[Jelodar, H., Wang, Y., Yuan, C., Feng, X., Jiang, X., Li, Y., & Zhao, L. (2019). Latent](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0215)

[Dirichlet allocation (LDA) and topic modeling: Models, applications, a survey.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0215)
_[Multimedia Tools and Applications, 78](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0215)_ (11), 15169–15211.
[Johnson, T. J., & Kaye, B. K. (2002). Webelievability: A path model examining how](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0220)

[convenience and reliance predict online credibility.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0220) _Journalism & Mass_
_[Communication Quarterly, 79](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0220)_ (3), 619–642.
Joulin, A., Grave, E., Bojanowski, P., & Mikolov, T. (2016). Bag of tricks for efficient text

classification. _arXiv preprint arXiv:1607.01759_ .
[Kumar, N., Venugopal, D., Qiu, L., & Kumar, S. (2018). Detecting review manipulation on](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0230)

[online platforms with hierarchical supervised learning.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0230) _Journal of Management_
_[Information Systems, 35](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0230)_ (1), 350–380.
[Kwark, Y., Chen, J., & Raghunathan, S. (2014). Online product reviews: Implications for](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0235)

retailers and competing manufacturers. _[Information Systems Research, 25](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0235)_ (1), 93–110.
[Lee, J., Park, D. H., & Han, I. (2008). The effect of negative online consumer reviews on](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0245)

[product attitude: An information processing view.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0245) _Electronic Commerce Research and_
_[Applications, 7](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0245)_ (3), 341–352.
[Lee, G. G., & Lin, H. F. (2005). Customer perceptions of e-service quality in online](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0250)

shopping. _[International Journal of Retail & Distribution Management, 33](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0250)_ (2), 161–176.
[Luca, M., & Zervas, G. (2016). Fake it till you make it: Reputation, competition, and Yelp](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0255)

review fraud. _[Management Science, 62](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0255)_ (12), 3412–3427.
[Ma, Y. J., & Lee, H. H. (2014). Consumer responses toward online review manipulation.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0260)



_[Journal of Research in Interactive Marketing., 8](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0260)_ (3), 224–244.
[Ma, H., Kim, J. M., & Lee, E. (2019). Analyzing dynamic review manipulation and its](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0265)



impact on movie box office revenue. _[Electronic Commerce Research and Applications,](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0265)_
_35_ [, Article 100840.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0265)
[Ma, H., Kim, J. M., & Lee, E. (2020). A 2020 perspective on “Analyzing dynamic review](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0270)



[manipulation and its impact on movie box office revenue”.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0270) _Electronic Commerce_
_[Research and Applications, 41](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0270)_, Article 100950.
[Mariani, M., & Baggio, R. (2022). Big data and analytics in hospitality and tourism: A](http://refhub.elsevier.com/S0148-2963(22)00842-6/optDENAlCjU4J)



systematic literature review. _[International Journal of Contemporary Hospitality](http://refhub.elsevier.com/S0148-2963(22)00842-6/optDENAlCjU4J)_
_[Management, 34](http://refhub.elsevier.com/S0148-2963(22)00842-6/optDENAlCjU4J)_ (1), 231–278.
[Mariani, M., & Borghi, M. (2020). Online review helpfulness and firms’ financial](http://refhub.elsevier.com/S0148-2963(22)00842-6/optOYDdJDZtWq)

[performance: An empirical study in a service industry.](http://refhub.elsevier.com/S0148-2963(22)00842-6/optOYDdJDZtWq) _International Journal of_
_[Electronic Commerce, 24](http://refhub.elsevier.com/S0148-2963(22)00842-6/optOYDdJDZtWq)_ (4), 421–449.
[Mariani, M., Styven, M. E., & Ayeh, J. K. (2019). Using Facebook for travel decision-](http://refhub.elsevier.com/S0148-2963(22)00842-6/opt4eehVCH07k)

[making: An international study of antecedents.](http://refhub.elsevier.com/S0148-2963(22)00842-6/opt4eehVCH07k) _International Journal of Contemporary_
_[Hospitality Management, 31](http://refhub.elsevier.com/S0148-2963(22)00842-6/opt4eehVCH07k)_ (2), 1021–1044.
[Mariani, M. M., Perez-Vega, R., & Wirtz, J. (2022). AI in marketing, consumer research](http://refhub.elsevier.com/S0148-2963(22)00842-6/optVA5ETfqVvx)

[and psychology: A systematic literature review and research agenda.](http://refhub.elsevier.com/S0148-2963(22)00842-6/optVA5ETfqVvx) _Psychology &_
_[Marketing, 39](http://refhub.elsevier.com/S0148-2963(22)00842-6/optVA5ETfqVvx)_ (4), 755–776.
[Mayzlin, D., Dover, Y., & Chevalier, J. (2014). Promotional reviews: An empirical](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0280)

[investigation of online review manipulation.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0280) _American Economic Review, 104_ (8),
[2421–2455.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0280)

[Park, D. H., & Kim, S. (2008). The effects of consumer knowledge on message processing](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0285)

[of electronic word-of-mouth via online consumer reviews.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0285) _Electronic commerce_

_[research and applications, 7](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0285)_ (4), 399–410.
[Payne, J. W., Payne, J. W., Bettman, J. R., & Johnson, E. J. (1993).](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0290) _The adaptive decision_

_maker_ [. Cambridge: Cambridge University Press.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0290)
[Petty, R. E., & Cacioppo, J. T. (1986). The elaboration likelihood model of persuasion. In](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0295)

_Communication and persuasion_ [(pp. 1–24). New York, NY: Springer.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0295)
Petty, R. E., & Cacioppo, J. T. (1990). _[Involvement and persuasion](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0300)_ . Tradition versus

[integration.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0300)
[Puranam, D., Narayan, V., & Kadiyali, V. (2017). The effect of calorie posting regulation](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0305)

[on consumer opinion: A flexible latent Dirichlet allocation model with informative](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0305)
priors. _[Marketing Science, 36](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0305)_ (5), 726–746.
[Singh, J. P., Irani, S., Rana, N. P., Dwivedi, Y. K., Saumya, S., & Roy, P. K. (2017).](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0310)

[Predicting the “helpfulness” of online consumer reviews.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0310) _Journal of Business_
_[Research, 70](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0310)_, 346–355.
[Sweetser, K. D., Porter, L. V., Chung, D. S., & Kim, E. (2008). Credibility and the use of](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0315)

[blogs among professionals in the communication industry.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0315) _Journalism & Mass_
_[Communication Quarterly, 85](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0315)_ (1), 169–185.



10


_J.M. Kim et al._ _Journal of Business Research 154 (2023) 113377_



[Tirunillai, S., & Tellis, G. J. (2014). Mining marketing meaning from online chatter:](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0320)

[Strategic brand analysis of big data using Latent Dirichlet Allocation.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0320) _Journal of_
_[Marketing Research, 51](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0320)_ (4), 463–479.
Trustpilot (2020). the critical role of reviews in Internet trust. Retrieved on the

[19.12.2021 from: https://business.trustpilot.com/guides-reports/build-trusted-bra](https://business.trustpilot.com/guides-reports/build-trusted-brand/the-critical-role-of-reviews-in-internet-trust)
[nd/the-critical-role-of-reviews-in-internet-trust.](https://business.trustpilot.com/guides-reports/build-trusted-brand/the-critical-role-of-reviews-in-internet-trust)
Turner, J. C., Reynolds, K. J., Van Lange, P. A. M., Kruglanski, A. W., & Higgins, E. T.

(2011). Handbook of Theories of Social Psychology.
[Ulker-Demirel, E., Akyol, A., & Simsek, G. G. (2018). Marketing and consumption of art](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0335)

products: The movie industry. _[Arts and the Market, 8](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0335)_ (1), 80–98.
[Vermeulen, I. E., & Seegers, D. (2009). Tried and tested: The impact of online hotel](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0340)

reviews on consumer consideration. _[Tourism Management, 30](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0340)_ (1), 123–127.
[Wathen, C. N., & Burkell, J. (2002). Believe it or not: Factors influencing credibility on](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0345)

the Web. _[Journal of the American society for information science and technology, 53](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0345)_ (2),
[134–144.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0345)

[Watts, S. A., & Zhang, W. (2008). Capitalizing on content: Information adoption in two](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0350)

[Wirth, W., Bonline communities. ocking, T., Karnowski, V., & Von Pape, T. (2007). Heuristic and systematic ¨](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0350) _[Journal of the Association for information Systems, 9](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0350)_ (2), 73–94.

use of search engines. _[Journal of Computer-Mediated Communication, 12](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0355)_ (3), 778–800.
[Zhang, D., Zhou, L., Kehoe, J. L., & Kilic, I. Y. (2016). What online reviewer behaviors](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0360)

[really matter? Effects of verbal and nonverbal behaviors on detection of fake online](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0360)
reviews. _[Journal of Management Information Systems, 33](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0360)_ (2), 456–481.
[Zhao, Y., Yang, S., Narayan, V., & Zhao, Y. (2013). Modeling consumer learning from](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0365)

online product reviews. _[Marketing Science, 32](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0365)_ (1), 153–169.
[Zhelezniak, V., Savkov, A., Shen, A., & Hammerla, N. Y. (2019). In](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0370) _Correlation coefficients_

_and semantic textual similarity_ [(pp. 951–962). Association for Computational](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0370)
[Linguistics.](http://refhub.elsevier.com/S0148-2963(22)00842-6/h0370)



**Jong Min Kim**, Ph.D. is Assistant Professor at the College of Business and Public Man­
agement, Wenzhou-Kean University, China. His research interests include online word-ofmouth, management response, promotional reviews, mobile marketing, and corporate
social responsibility. In terms of methodology, Dr. Kim focuses on quasi-experimental
approaches based on Econometrics. His research has appeared in the _Journal of Business_
_Research_, _Journal of Interactive Marketing_, _International Journal of Electronic Commerce_,
and _Tourism Management_ .


**Keeyeon Park**, Ph.D., is a Lecturer at the Wenzhou-Kean University. His research interests
span marketing applications of Machine Learning, Natural Language Processing, Network
Analysis, Digital Transformation, Mobile Applications.


**Marcello Mariani** is a Professor of Management at the University of Reading (UK) and
University of Bologna (Italy), member of the Henley Center for Entrepreneurship, the
Academy of Management and the European Institute for Advanced Studies in Manage­
ment. His current research interests include big data and analytics, eWOM, digital business
models, AI, IoT, automation and coopetition strategies in service industries. His researches
have been published in _Journal of Business Research, MIT Sloan Management Review_, _In­_
_dustrial Marketing Management, Journal of Advertising, Harvard Business Review, International_
_Marketing Review, Psychology_ & _Marketing, Industrial and Corporate Change, Long Range_
_Planning, Technological Forecasting and Social Change, International Journal of Electronic_
_Commerce, Tourism Management, Annals of Tourism Research, Journal of Travel Research,_
_International Journal of Contemporary Hospitality Management, International Journal of_
_Hospitality Management, European Management Journal_, _Production Planning & Control, Eu­_
_ropean Accounting Review, International Studies in Management and Organizations, Journal of_
_Destination Management and Marketing, International Studies in Management and Organiza­_
_tions_ and more.



11


