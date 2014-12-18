// Gets the div block feed
var feedcontainer = document.getElementById("feed")
// url to retrieve the feeds from Hollywood reporter for TV
var feedurl = "http://feeds.feedburner.com/thr/television"
var feedlimit = 10

function rssfeedsetup() {
    // Using google js api to set feeds limit as 10
    var feedpointer = new google.feeds.Feed(feedurl)
    feedpointer.setNumEntries(feedlimit)
    feedpointer.load(displayfeed)
}

function displayfeed(result) {
    // If feeds are fetched successfully then div block feed is cloned 
    // 10 times and are displayed on the movie news feed page// Sets the Read more button on the page to the original link of the 
            // news item.
    if (!result.error) {
        var thefeeds = result.feed.entries
        console.log(thefeeds);
        var feed = $(".feedShort:first");
        var feedContainer = $("#feed");

        for (var i = 0; i < thefeeds.length; i++) {
            var feedClone = feed.clone();
            var contentSnippet = thefeeds[i].contentSnippet
            contentSnippet = contentSnippet.replace("read more", "");
            feedClone.find("h3").html(thefeeds[i].title);
            feedClone.find("p").html(contentSnippet);
            // Sets the Read more button on the page to the original link of the 
            // news item.
            feedClone.find(".btn-feed").attr("href", thefeeds[i].link);
            feedContainer.append(feedClone);
        }
        $(".feedShort:first").attr("style", "display:none;")

    }

    else
        alert("Error fetching feeds!")
}

window.onload = function () {
    rssfeedsetup()
}