var feedcontainer = document.getElementById("feed")
var feedurl = "http://rss.nytimes.com/services/xml/rss/nyt/Sports.xml"
var feedlimit = 10
var rssoutput = "<h2>Latest News:</h2><ul>"


function rssfeedsetup() {
    var feedpointer = new google.feeds.Feed(feedurl)
    feedpointer.setNumEntries(feedlimit)
    feedpointer.load(displayfeed)
}

function displayfeed(result) {
    if (!result.error) {
        var thefeeds = result.feed.entries
        for (var i = 0; i < thefeeds.length; i++)
            rssoutput += "<li><a href='" + thefeeds[i].link + "'>" + thefeeds[i].title + "</a></li>"
        rssoutput += "</ul>"
        feedcontainer.innerHTML = rssoutput
    }
    else
        alert("Error fetching feeds!")
}

window.onload = function () {
    rssfeedsetup()
}
