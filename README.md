# custom_dio_fix

基于[custom_dio](https://github.com/hatemragab/custom_dio)适配新版 Flutter 的网络请求插件

## Getting Started

start init before you send any request

``` 
  WidgetsFlutterBinding.ensureInitialized();
  CustomDio.setInitData(
    CustomDioOptions(
      baseUrl: "http://www.google.com",
      headers: {"authorization": "Bearer xxx"},
    ),
  );
```

## POST

```
  try {
  final data =  await CustomDio()
        .send(reqMethod: RequestMethod.post, path: "user/login", body: {"email": "email"});
  } catch (err) {
    print(err.toString());
  }
```

## GET

```
  try {
   final data = await CustomDio()
        .send(reqMethod: RequestMethod.get, path: "user/login", query: {"search": "email"});
  } catch (err) {
    print(err.toString());
  }
```

## UPLOAD

```
  try {
    final data = await CustomDio()
        .uploadFile(path: "path", filePath: File("").path, body: [
      {"one": "one"},
      {"two": "two"},
    ]);
  } catch (err) {
    print(err.toString());
  }
  

```

## uploadBytes

```
    try {
      final data = await CustomDio().uploadBytes(
          path: "dio-test/file",
          bytesExtension: "png",
          bytes: bytes,
          body: [
            {"content": "sd"},
            {"attachments": "attachments"},
          ]);

      return data.data.toString();
    } catch (err) {
    
      rethrow;
    }
```

## delete

```
  Future delete() async {
    try {
      final data =
      await CustomDio().send(reqMethod: RequestMethod.delete, path: "dio-test/1");
      dLog(data.data.toString());
    } catch (err) {
      
    }
  }
```

## getOne

```  Future getOne() async {
    try {
      final data =
      await CustomDio().send(reqMethod: RequestMethod.get, path: "dio-test/154");
      dLog(data.data.toString());
    } catch (err) {
    
    }
  }
```

## patch

```
  Future update() async {
    try {
      final data = await CustomDio().send(
          reqMethod: RequestMethod.patch,
          path: "dio-test",
          body: {"content": "update content"});
      dLog(data.data.toString());
    } catch (err) {
    
    }
  }
```

