
#!/bin/bash
echo "ENTER URL OF PODCAST: "
read URL
CURL=`curl $URL`


EXTRACTED_MP3=`echo $CURL | grep -Po '(?<=url=")[^"]*(?=")' | grep .mp3`

for LINK in $EXTRACTED_MP3
do
	`wget $LINK`
done

