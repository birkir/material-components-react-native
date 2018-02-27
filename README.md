
# material-components-react-native

React Native wrapper for [material-components-ios from Google](https://github.com/material-components/material-components-ios)

Roadmap
 - FlatButton, RaisedButton, ActivityIndicator, ProgressView,
 - Card, Chip, ShadowLayer
 - FloatingButton, Slider, Snackbar
 - FeatureHighlight, Ink, 
 - ButtonBar
 - Wrap controller API's like Collection and Navigation.
 - Allow composing different many components like `Chip` into `TextField`.

TODO:
 - Code Lint
 - Testing
 - Switch to TypeScript
 - Rename ios project from `RNMaterialComponents` to `RNMDC`.
 - Group components to folders.

## Getting started

`$ npm install material-components-react-native --save`

### Mostly automatic installation

`$ react-native link material-components-react-native`

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `material-components-react-native` and add `RNMDC.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNMDC.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

Not yet available.

## Run example for development

```bash
git clone git@github.com:birkir/material-components-react-native.git
cd material-components-react-native
yarn link
cd example
yarn link material-components-react-native
cd ios
pod install
cd ..
react-native run-ios
```

## Documentation

### `FlatButton`

```js
import { FlatButton } from 'material-components-react-native';

<FlatButton
  enabled={true} // default true
  uppercaseTitle={false} // default true
  hitAreaInsets={{ top: 0, left: 10, right: 0, bottom: 0 }}
  disabledAlpha={0.7}
  customTitleColor="orange" // deprecated
  underlyingColorHint="black"
  hasOpaqueBackground={true}
  inkMaxRippleRadius={128}
  inkStyle="bounded" // You can select "bounded" or "unbounded"
  inkColor="blue"
>
  Button content
</FlatButton>
```

### `RaisedButton`

```js
import { RaisedButton } from 'material-components-react-native';

<RaisedButton
  enabled={true} // default true
  uppercaseTitle={false} // default true
  hitAreaInsets={{ top: 0, left: 10, right: 0, bottom: 0 }}
  disabledAlpha={0.7}
  customTitleColor="orange" // deprecated
  underlyingColorHint="black"
  inkMaxRippleRadius={128}
  inkStyle="bounded" // You can select "bounded" or "unbounded"
  inkColor="blue"
>
  Button content
</RaisedButton>
```

### `Card`

```js
import { Card } from 'material-components-react-native';

<Card
  style={{ flex: 1}}
  cornerRadius={16}
  shadowElevation={8}
  borderWidth={2}
  borderColor="blue"
>
  <View>
    <Text>Sub view</Text>
  </View>
</Card>
```

### `ProgressBar`

```js
import { ProgressBar } from 'material-components-react-native';

<ProgressBar
  style={{ height: 30 }}
  progress={0.75}
  progressTintColor="orange"
  trackTintColor="black"
/>
```

### `TextField`

```js
import { TextField } from 'material-components-react-native';

let fieldRef;

<TextField
  ref={ref => { fieldRef = ref; }}
  style={{ height: 50 }}
  enabled={true} // default true
  hidesPlaceholderOnInput={true} // default true
  placeholder="Placeholder text"
  text="Set your own text"
  textColor="blue"
  textInsets={{ left: 10, top: 5, right: 0, bottom: 0 }}
  onChange={e => console.log(e.nativeEvent)}
  onChangeText={value => console.log(value)}
  onFocus={() => console.log('Focused')}
  onBlur={() => console.log('Blurred')}
/>

fieldRef.focus();
fieldRef.blur();
fieldRef.clearText();
```
