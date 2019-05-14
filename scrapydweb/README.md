# scrapydweb

Map local timezone to alpine: 

```yaml
version: "3"

services:
  scrapyd:
    container_name: scrapydweb 
    image: thecjw/scrapydweb:latest
    volumes:
        - "data_0:/home/scrapydweb"
        - "./scrapydweb_settings_v8.py:/home/scrapydweb/scrapydweb_settings_v8.py"
        - "/etc/localtime:/etc/localtime:ro"
        - "/etc/timezone:/etc/timezone:ro"
    restart: unless-stopped
    ports:
      - 5000:5000

volumes:
  data_0: {}
```
