#This is success, but with shared link.
gcc -o sepheaders sepheaders.c -I/home/rock/opensource/curl_install/include -L/home/rock/opensource/curl_install/lib -static -lcurl -shared -lz -lrt



#This is success, with static link.
gcc -o sepheaders sepheaders.c -I/home/rock/opensource/curl_install/include -L/home/rock/opensource/curl_install/lib -Wl,-Bstatic -lcurl -Wl,-Bdynamic -lz -lrt
