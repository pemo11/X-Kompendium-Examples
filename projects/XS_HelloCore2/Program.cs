// dotnet add package System.ServiceModel.Syndication

using System.ServiceModel.Syndication;
var url = "https://khalidabuhakmeh.com/feed.xml";
using var reader = XmlReader.Create(url);
var feed = SyndicationFeed.Load(reader);

var post = feed
    .Items
    .FirstOrDefault();

Console.WriteLine(post);