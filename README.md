# kippo-container
[![License](http://img.shields.io/:license-MIT-blue.svg)](http://doge.mit-license.org)

dockerfile for [kippo (SSH Honeypot)](https://github.com/desaster/kippo)

## Usage

```
$ git clone https://github.com/bungoume/kippo-container.git
$ cd kippo-container
$ vim kippo.cfg
  # EDIT kippo.efg
$ sudo docker build -t kippo .
$ sudo docker run -d -p 2222:2222 -name kippo kippo
```

## License

[MIT](LICENCE)


## Author

[bungoume](https://github.com/bungoume)
