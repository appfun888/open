#!/bin/sh

filePath=$1
fileName=${filePath/*\//}
fileSize=$(du -b "$filePath" | awk '{print $1}')

echo $filePath
echo $fileName
echo $fileSize
curl --request POST 'https://idc.prolzy.com/vhost/detail/2360/file_upload' \
--header 'Cookie: __51uvsct__K9rJPDavm8XL9vNX=1; __51vcke__K9rJPDavm8XL9vNX=5378a71d-0c7b-546d-8c3c-ee34e317159a; __51vuft__K9rJPDavm8XL9vNX=1719743903195; sw110xy=jmqdsv6gam5a1925hkm1m8fi961cnkda; sw110xy=0ub081v3av0m9dsqsdc1lrah2vn7sr28' \
--form f_name="$fileName" \
--form f_size="$fileSize" \
--form f_start="0" \
--form blob=@"$filePath"
echo 完成