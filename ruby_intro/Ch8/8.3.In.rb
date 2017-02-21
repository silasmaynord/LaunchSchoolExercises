#To wrap up this chapter we are going to work through 
#an exercise that will show us how to interact with these 
#common file types. We will pull two files which contain 
#articles originally gathered from feedzilla and slashdot. 
#One in XML format. One in JSON. We will combine the two lists
#to a common format, sort them, and save them to CSV and XLS files.

#Let's get started. In your command line run these two commands.

#$ wget -O feedzilla.json https://d186loudes4jlv.cloudfront.net/ruby/feedzilla.json
#$ wget -O slashdot.xml https://d186loudes4jlv.cloudfront.net/ruby/slashdot.xml



#Time to open up that XML file, 
#find the item elements, 
#and parse them with Nokogiri

slashdot_articles = []
File.open("slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('item').map { |i|
    {
      title: i.at_css('title').content,
      link: i.at_css('link').content,
      summary: i.at_css('description').content
    }
  }
end


#I should probably ask for help in understanding this one.