## Synapse

Synapse is an app for searching for neuroscience research. It flips the traditional search around by starting with a specific point in the brain that was activated in the results, instead of the subject of the research. When neuroscience articles are published, they contain several points - specific three dementional coordiates, such as 14, -21, 30 - that were activated. The main effective ways to search for these articles currently, however, is only by the subject of the research, usually with keywords.

Synapse allows neuroscientists to search for articles by selecting or entering a coordinate. By creating a new way to search for articles, the goal is to connect neuroscientists who should be talking to each other - because of similarities in where their research ended up - but who aren't - because of differences in where their research began.

### Data

Synapse uses two main models: papers and titles. Papers contain X, Y and Z coordinates, the journal of the article, and a digital object identifier (DOI). Every paper has a unique DOI, such as 10.1016/j.neuroimage.2008.02.055. The data for papers comes from the [Neurosynth project](http://neurosynth.org/).

Titles contain the title of articles and their DOI. Titles were found by using the DOI to create a link to a page that displayed the title and abstract of an article (doi.org/article_doi). That url would inevitably be a redirect, so HTTPClient was used to find the final url. Nokogiri parsed the page and gave the title of the article.

All data in Synapse uses the MNI coordinate system.

### Brain model

The brain model also comes from the Neurosynth Project. Their example code is on GitHub [here](https://github.com/neurosynth/nsviewer/tree/master/example).

### Key files

* app > controllers > [papers_controller.rb](https://github.com/kaplanoah/synapse/blob/master/app/controllers/papers_controller.rb)
* app > views > site > [home.html.erb](https://github.com/kaplanoah/synapse/blob/master/app/views/site/home.html.erb)
* app > views > papers > [search.html.erb](https://github.com/kaplanoah/synapse/blob/master/app/views/papers/search.html.erb)

### To launch app

Online: visit [searchsynapse.herokuapp.com](http://searchsynapse.herokuapp.com/)

Locally: fork and clone app. From terminal, in app's directory, run:

    bundle install
    rails s

In web browser, visit:

    http://localhost:3000/