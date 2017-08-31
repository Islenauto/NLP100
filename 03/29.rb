 require 'json'
 require 'net/http'

 f = File.open("text_uk.txt","r")
 txt = f.read

 hash = {}
 txt.scan(/(?:^\|)(.+)\s=\s(.+\n)/).each do |p|
   hash[p[0]] = p[1].gsub(/('''|''''|\[http.*\]?|<.+?>|\[\[|\]\]|\{\{|\}\})/,"").chomp
 end

 uri = URI(URI.encode("https://www.mediawiki.org/w/api.php?action=query&format=json&titles=Image:#{hash["国旗画像"]}&prop=imageinfo&iiprop=url"))
 puts JSON.parse(Net::HTTP.get(uri))['query']['pages']['-1']['imageinfo'][0]['url']

