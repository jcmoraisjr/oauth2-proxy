# oauth2_proxy

Just another [oauth2_proxy](https://github.com/bitly/oauth2_proxy) container.

[![Docker Repository on Quay](https://quay.io/repository/jcmoraisjr/oauth2-proxy/status "Docker Repository on Quay")](https://quay.io/repository/jcmoraisjr/oauth2-proxy)

Advantages:

* Container starts as non root
* Just Alpine + oauth2_proxy binary from the releases page and nothing more

Container has no CMD or ENTRYPOINT. Use `/oauth2_proxy` as the first argument to start the proxy.
