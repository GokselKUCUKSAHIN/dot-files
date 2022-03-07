<img src="../res/logo/webstrom_logo.png" width="70px" alt="npm Logo"/>  

## Run > Edit Configurations...

- ### Add new configuration _clicking_ by **+** icon.
- ### Select Node.js and set `Node parameters` to

```console
--require ts-node/register
```

- ### Into `JavaScript File` section put this macro

```console
$FilePathRelativeToProjectRoot$
``` 

- ### Make sure `ts-node` added to devDependencies.

```console
npm i -D ts-node
```
---

![image](../res/ss/ws.png "WebStrom Run/Debug Configurations")