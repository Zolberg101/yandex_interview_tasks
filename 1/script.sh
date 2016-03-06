unzip /home/usr/test_yandex/1.xlsx && 
grep -oP "<row.*?>.*?</row>" /home/usr/test_yandex/xl/worksheets/sheet1.xml >> rows.xml
grep -oP '<c r="C[0-9]*".*?>.*?</c>' /home/usr/test_yandex/rows.xml >> rows1.xml
grep -oP '(?<=<v>).*?(?=</v>)' /home/usr/test_yandex/rows1.xml >> rows2.xml
cat rows2.xml | tr " " "\n" | sort | uniq -c | sort -gr
