#!/bin/sh

mkdir ongyjho_tmp | cd ongyjho_tmp 

#download CSS
curl GET https://d33pksfia2a94m.cloudfront.net/assets/plugin/popper/1.14.3/popper.min.js > base_css_popper.min.js.css
curl GET https://d33pksfia2a94m.cloudfront.net/assets/plugin/bootstrap/4.1.3/css/bootstrap.min.css > base_css_bootstrap.min.css

#download JS
curl GET https://d33pksfia2a94m.cloudfront.net/assets/plugin/jquery/3.3.1/jquery.min.js > base_js_jquery.min.js
curl GET https://d33pksfia2a94m.cloudfront.net/assets/plugin/bootstrap/4.1.3/js/bootstrap.min.js > base_js_bootstrap.min.js

#download Iamport 
curl GET https://cdn.iamport.kr/js/iamport.payment-1.1.5.js > iamport.payment-1.1.5.js

cd "$(dirname $find ../.github/workflows/assets/app.js)"

find ../assets/css -mindepth 1 -print0 >> test.txt
cat test.txt | 
while read file; do
      echo $(basename $file)
done

exit 1;