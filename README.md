# ProjectName

提供 iOS 移动组件基本模板，提供如下特性：

# 组件结构
|-- git
    |-- Podfile
    |-- ProjectNameComponent.podspec
    |-- README.md
    |-- ProjectNameComponentBundle
    |   |-- Avatar_Default@2x.jpg
    |   |-- Localizable.strings
    |-- ProjectNameComponent
    |   |-- ProjectNameComponent.h（外部引用）
    |   |-- ProjectNameComponentPrefix.pch
    |   |-- include
    |   |   |-- .DS_Store
    |   |   |-- component
    |   |   |   |-- ProjectNameComponent+Class.h（初始化入口）
    |   |   |   |-- ProjectNameComponent+Class.m
    |   |   |-- define
    |   |       |-- ProjectNameComponentConst.h（常量）
    |   |       |-- ProjectNameComponentConst.m
    |   |-- src
    |       |-- dao
    |       |   |-- ProjectNameComponentListDao.h（网络请求）
    |       |   |-- ProjectNameComponentListDao.m
    |       |-- define
    |       |   |-- ProjectNameComponentConst+Private.h（内部常量）
    |       |   |-- ProjectNameComponentConst+Private.m
    |       |   |-- ProjectNameComponentHelper.h（常用方法）
    |       |   |-- ProjectNameComponentHelper.m
    |       |-- environment
    |       |   |-- ProjectNameComponentEnvironment.h（环境变量）
    |       |   |-- ProjectNameComponentEnvironment.m
    |       |-- modules
    |       |   |-- .DS_Store
    |       |   |-- ProjectNameComponentViewController.h（主VC）
    |       |   |-- ProjectNameComponentViewController.m
    |       |-- util
    |           |-- ProjectNameComponentColor.h（获取颜色方法）
    |           |-- ProjectNameComponentColor.m
    |           |-- ProjectNameComponentFont.h（获取字体方法）
    |           |-- ProjectNameComponentFont.m
    |           |-- ProjectNameComponentImage.h（获取资源方法）
    |           |-- ProjectNameComponentImage.m
    |-- com.nd.sdp.component.projectnamecomponent_i18n（多语言包）
    |   |-- en.lproj
    |   |   |-- Localizable.strings
    |   |   |-- version.txt
    |   |-- zh-Hans.lproj
    |       |-- Localizable.strings
    |       |-- version.txt
    |-- com.nd.sdp.component.projectnamecomponent_skin（皮肤包）
        |-- color.plist
        |-- font.plist
----

## 皮肤包
    com.nd.sdp.component.projectnamecomponent_skin
## 多语言包
    com.nd.sdp.component.projectnamecomponent_i18n


# 安装说明

#### 添加依赖

组件`podspec`文件添加s.dependency 'ProjectNameComponent'

组件`Podfile`文件添加pod 'ProjectNameComponent'

# 本控件依赖
- `CCBaseProject`
