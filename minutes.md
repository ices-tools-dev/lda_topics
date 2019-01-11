# Minutes

## 11 Oct 2018 Skype meeting

Arni, Carlos, Shaheen

**Points raised**

1. Diverse ICES reports go back to 1902 and the digitization seems to be of high
   quality (faithful copy-paste into text editor).

2. LDA does not look at time as a variable. To analyze trends or compare topics
   between periods, one could either analyze them separately and compare
   afterwards, or consider using *dynamic topic models*.

**Action items**

* [x] Prepare and make available a PDF collection for initial analysis, starting
      around the year 2000. [Carlos]

* [x] Analyze the first PDF collection using LDA. [Shaheen]

* [x] Present initial results. [Shaheen]

* [ ] Discuss initial results. [Arni, Carlos, Shaheen]

* [ ] Examine which PDF reports are administrative or duplicated material.
      [Arni]

* [ ] Write a script that removes PDF files to narrow down to scientific
      reports. [Arni]

* [x] Prepare a GitHub repository to coordinate the work. [Arni]

## 10 Jan 2019 Skype meeting

Arni, Carlos, Shaheen

**Points raised**

1. Substantial progress has been made. Starting with a collection of PDF reports
   from 2000-2017, we have:
   - made a list of words to filter out (stop words)
   - identified 26 bundles of words that tend to hang together
   - given titles to 26 topics
   - calculated the topic distribution of each report

2. Now is a good time to explore what kind of results we can find by looking
   closer at the topic distribution by report. For example, if we pool together
   the reports from each year, how does the distribution change over the years?
   Can we detect some trends, with some topics increasing or decreasing over
   time? Also, what kind of tables and plots could we use to convey such time
   trend results?

3. Once we have found appropriate analytical approaches and tables/plots to
   convey time trend results, we could try using that same approach on a larger
   collection of PDF reports that goes further back in time. Maybe to 1980,
   1950, or even back to 1902.

**Action items**

[ ] Check if we can remove entries that are not actual scientific reports. For
    example, some entries may be individual sections from a larger report. In
    such cases, we would like to include the whole report, but not also the
    individual sections that are repeating the same material. The total number
    of entries is currently around 4000. [Arni, Carlos]

[ ] Calculate average topic distribution by year.
    [Arni, Carlos]

[ ] Explore analytical methods to calculate time trends in topic distribution.
    [Arni, Carlos, Shaheen]

[ ] Explore what kind of tables and plots can be used to effectively convey the
    time trend results. [Arni, Carlos, Shaheen]
