# cocoapods-show-podpsecs-in-project

[![Gem Version](https://badge.fury.io/rb/cocoapods-show-podpsecs-in-project.svg)](https://badge.fury.io/rb/cocoapods-show-podpsecs-in-project)

A CocoaPods plugin which shows all project related podpsecs in pods project, including all dependencies. 

No need to lookup podspecs any more.

![](resources/hero.png)

## Installation

    $ gem install cocoapods-show-podpsecs-in-project

## Usage

    plugin 'cocoapods-show-podpsecs-in-project'

Add this line to `Podfile`, and you are all set 🥳

After a `pod install`, all podspecs should be shown in pods project.

## Why

Recently I met a problem.

Xcode 10 does not bundle with libstdc++6.0.9, but some pods we depended on write s.libraries = 'stdc++.6' in their podspec and cause our project failed to build. It's pretty frustrating to lookup their podspecs one by one and try to figure out which pod depend on this library. But with this plugin, it's easy to search and locate which extacly cause this problem.

I suppose, this plugin should only be useful at some rate situation.

## License

MIT
