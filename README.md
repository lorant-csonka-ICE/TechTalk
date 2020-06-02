When it comes to mobile development, we have to choose the development framework wisely.
We have to consider what our goal is specifically (e.g. we don't need cross-platform solution for an iOS only calculator app)

#### On this, we have to consider 4 points: 
- **Code**: we only can develop on a language which we know)
- **Cost/time**: maybe it's even faster to learn something new than do sth in the way we used to do
- **Platform**: make sure what's the target is
- **Performance**: all technologies have limits, we have to make sure that the chosen platform can do what we would like to achieve

With Cross-platform solutions, we often give up some of these points and make compromises. With this fusioned solution, I show a way to get rid of those compromises.

### Flutter
 - [What is Flutter?](https://flutter.dev "What is Flutter?")
 - [What is Flutter capable of?](https://medium.com/asos-techblog/flutter-vs-react-native-for-ios-android-app-development-c41b4e038db9 "What is Flutter capable of?")

### Unity
 - [What is Unity?](https://conceptartempire.com/what-is-unity/ "What is Unity?")
 - [What is Unity capable of?](https://unity.com/madewith "What is Unity capable of?")
---


**What if a client requests an app which is...**
- Superfast
- Super nice
- Cheap
- Cross-platform
- Basically 2D   <-- *till this point, Flutter could be used (or any other well-known cross-platform framework)*
- But there should be some heavy 3D stuff included...


**This is just not possible.. or is it?**
 - Let's create a nice 3D app with unity and we manage the UI somehow with Unity as well..!? :bulb: 
   - **3D part** ✅ 
   - **2D menu** ❗  (not smooth, not nice, not accurate, hard to align things, not what we used to at the usual cross-platform frameworks)

**So how to proceed?**
- From Unity **2019.03.x** we can export Unity projects as binaries/components which can be then embedded to native projects as a view 
- Hang on... :bulb: Flutter has a component which enables embedding native views to the widget hierarchy (PlatformView)

... What if we combine them?

### [flutter-unity-view-widget ](https://github.com/snowballdigital/flutter-unity-view-widget "flutter-unity-view-widget ")
- Unity 3D widget inside a Flutter app
- **Power?** Provided by the Unity framework
- **Communication?** Message call-backs (implemented for both platform)

**Let's get back to the customer's request:**
- Superfast...✅ 
- Super nice...✅ 
- Cheap...✅ 
- Cross-platform...✅ 
- Basically 2D...✅  *-  so far so good!*
...
- But there is some heavy 3D stuff included...✅ 

### Flutter & Unity combined :tada: 
[![video](https://img.youtube.com/vi/o_-OHiwXccg/0.jpg)](https://www.youtube.com/watch?v=o_-OHiwXccg)