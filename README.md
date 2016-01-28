# AVOSCloud-iOS-SDK静态库与leancloud官方同步（包括实时通信SDK）

##3.2.2 发布日期：2016-1-22

- 将 IM 2.0 的底层数据传输协议由 JSON 改为 protobuf，让数据传输更有效率
- 支持 AVIMConversationQuery 的 AND 和 OR 组合查询
- 增加 +[AVOSCloudIM handleRemoteNotificationsWithDeviceToken:] 接口，用来处理成功注册到的 device token
- 将推送通知的注册接口移到 IM 模块
- 支持缓存 conversation 的 muted 字段
- 修复 conversation 的更新跟 conversation query 缓存的数据不一致的问题
- S3 文件上传区分应用，每个应用单独一个 bucket
- 修复 conversation 完整性检查的 bug，解决重复查询的问题
- 修复 +[AVOSCloud getServerDate:] 接口中，error 参数被提前释放的问题
- 修复 SESSION_TOKEN_EXPIRED 错误，解决 Session 过期导致无法登陆的问题。

##3.1.6.7 发布日期：2015-11-26

- 修复 IM-1.x版本 session 连接不稳定的问题

##3.1.6.6 发布日期：2015-11-25

- 允许对云代码进行 RPC 调用
- 修复 client 对象复用时，open 时状态不正确的问题

##3.1.6.5 发布日期：2015-11-24

- 修复 conversation 缓存阻塞主线程的问题
- 修复 client 状态转移的问题

## 3.1.6 发布日期：2015-11-02

- 通信模块支持单点登录，调用 -[AVIMClient openWithClientId:tag:callback:]来使用，tag 为 nil 时是默认的多点登录，否则将把tag相同的其它设备踢下线，下线通知将回调于[AVIMClientDelegate client:didOfflineWithError]
- 基础模块和通信模块支持 OSX 平台，以后将与 iOS 平台同步更新
- 修复有时不返回 AVUser 子类的问题。另外，请调用 [CustomUser registerSubclass] 注册 AVUser 子类
- 修复文件下载进度可能为负数的问题
- AVFileQuery 增加 getFileWithId:、findFiles: 等接口，支持返回 AVFile 而非 AVObject
- 修改密码后更新 Session Token，无须重新登录
- 优化通信模块的请求，防止请求被 DNS 劫持

## 3.1.5.2 发布日期：2015-10-15
- 修复网络请求中，POST 数据不能正确处理的问题
- AVQuery 支持 GeoPoint 最小距离（minDistance）查询条件

