# john
A offline tool to find weak passwords of your users

## Support
```sh
john --list=formats
```

## Zip File
```sh
zip --password 12345678  data.zip README.md
zip2john data.zip password.txt
john --wordlist=~/Downloads/passwordlist password.txt
```

## Example
```sh
echo -n test2 | md5sum | awk '{print $1}'
```

