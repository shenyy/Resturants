import json
import csv

#output file directory
output_dir = 'review.csv'
f = open(output_dir,'wb')
writer = csv.writer(f)
writer.writerow(('user_id','user_name','text','followers count','listed count','retweets sent'))


#open input file
attr = []
with open("yelp_academic_dataset_business.json") as f:
    for line in f:
        data_line = json.loads(line)
        
for item in data_line:
    attr.append(item)
#        data = data.attach(data_line)
        
json_data = open
data = json.loads(json_data)
#load in certain fields of json data
    for item in data:
        txt = item['text'].encode('ascii','ignore')
        usr_id = str(item['user']['id'])
        name = item['user']['name'].encode('ascii','ignore')
        follower = str(item['user']['followers_count'])
        listed = str(item['user']['listed_count'])
        retweets = str(item['retweet_count'])
        writer.writerow((usr_id,name,txt,follower,listed,retweets))
f.close()
#json_data.close()