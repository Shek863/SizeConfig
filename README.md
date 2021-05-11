# kodora_ux

[kodora_ux](https://github.com/Shek863/SizeConfig) is a new Flutter package to controlthe responsiveness of your interfaces and thuskeep the same rendering on all media.

## Installation
Add the package like this:
```yaml
dependencies:
  flutter:
    sdk: flutter
  kodora_ux :
```
## Usage
```dart
import 'package:kodora_ux/kodora_ux.dart';
```
Initialize kodora_ux in the Build of your main class.
with
deltaX and deltaY respectively equal to the width and the height of the reference screen (Usually those of the design).
```java
Ux().init(context, deltaX, deltaY);
```
You can then use it like this
For the size of your texts:
```dart
//_size double value
s(_size);
```
For the margins (Top or Bottom) or heights of your components:
```dart
//_spatialH double value
h(_spatialH);
```
For the margins (Start or End) or widths of your components:
```dart
//_spatialW double value
w(_spatialW);
```
## Issues and feedback

Please use [issues](https://github.com/Shek863/SizeConfig) to send feedback or report a bug. Thank you!

