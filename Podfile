# Uncomment this line to define a global platform for your project

source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/DevilMrTank/CCSpecRepository.git'

platform :ios, '9.0'

project 'ProjectNameComponent'

# SDK/组件使用的依赖（最后应该在podspec中体现）
def dependency
   pod 'CCBaseProject'
    
end

# 仅在开发时使用的依赖（不应该加入到podspec），如单元测试框架等
def develop_dependency
	# pod 'OCMock'
    # pod 'SDPSpaceCommander' # 自动格式化代码工具
    # pod 'SDPMobileComponentBuilder' # 移动组件构建工具
end

target 'ProjectNameComponent' do
    dependency
    develop_dependency

    # 换成各自的SDK
    # pod 'SampleSDK', '~> 0.0.6'
end
