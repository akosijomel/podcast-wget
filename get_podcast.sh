
#!/bin/bash
# Enter URL of podcast 
# Usually from RSS links
echo "ENTER URL OF PODCAST: "
read URL

# Directory name 
echo "ENTER FOLDER NAME: "
read FOLDER_NAME

# Create Directory to downlaod
mkdir ~/Music/$FOLDER_NAME
CURL=`curl $URL`

EXTRACTED_MP3=`echo $CURL | grep -Po '(?<=url=")[^"]*(?=")' | grep .mp3`

for LINK in $EXTRACTED_MP3
do
	echo DOWNLOAD...Plese Wait
	wget -P ~/Music/$FOLDER_NAME -o ~/Music/$FOLDER_NAME/log.txt $LINK
done

