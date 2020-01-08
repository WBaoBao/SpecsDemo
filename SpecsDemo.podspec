#
#  Be sure to run `pod spec lint SpecsDemo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #
  # 版本号
  spec.name         = "SpecsDemo"
  spec.version      = "0.0.1"
  # 简介
  spec.summary      = "SpecsDemo 是私有specs的demo"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
			SpecsDemo 是私有仓库的一个demo,用来实现组件化的探索
                   DESC
  # 项目主页地址
   spec.homepage     = "https://github.com/WBaoBao/SpecsDemo.git"
  # spec.homepage     = "http://EXAMPLE/SpecsDemo"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #
  # 许可证
  #spec.license      = "MIT (example)"
   spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #
  # 作者
  spec.author             = { "WangBaoMing" => "1250829271@qq.com" }
  # Or just: spec.author    = "WangBaoMing"
  # spec.authors            = { "WangBaoMing" => "1250829271@qq.com" }
  # 社交网址,这里我写的Twitter,如果你写Twitter的话,你的podspec发布成功后会@你
  # spec.social_media_url   = "https://twitter.com/WangBaoMing"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # 支持的pod最低版本
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #
  # 项目的地址"#{spec.version}"
  spec.source       = { :git => "https://github.com/WBaoBao/SpecsDemo.git", :tag => "#{spec.version}" }
  # 第一种是本地git仓库
  # spec.source       = { :git => "./XTProtocomManager", :tag => s.version }
  # spec.source = { :git => "https://github.com/dingpuyu/XTProtocolManager.git", :commit => "881daa" }
  # spec.source = { :git => "https://github.com/dingpuyu/XTProtocolManager.git", :tag => 0.0.1 }
  # spec.source = { :git => "https://github.com/dingpuyu/XTProtocolManager.git", :tag => spec.version }
  # commit => "68defea" 表示将这个Pod版本与Git仓库中某个commit绑定
  # tag => 1.0.0 表示将这个Pod版本与Git仓库中某个版本的comit绑定
  # tag => s.version 表示将这个Pod版本与Git仓库中相同版本的comit绑定



  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #
  # 需要包含的源文件"SpecsDemo/**/*.{h,m}"
  spec.source_files  = "SpecsDemo","SpecsDemo/**/*.{h,m}"
  #spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # 资源文件
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # 所需的framework,多个用逗号隔开
   spec.frameworks = "UIKit","Foundation","QuartzCore"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.
#是否支持ARC
  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
#依赖库，不能依赖未发布的库
  # spec.dependency "JSONKit", "~> 1.4"

end
