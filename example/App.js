import React from 'react';
import { StyleSheet, ScrollView, Text, View, TouchableWithoutFeedback, NativeModules } from 'react-native';
import { RaisedButton, FlatButton, TextField, Card, ProgressBar, Collection } from 'material-components-react-native';

export default class App extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <TextField
          ref={r => {this.ref = r; }}
          style={{ height: 30 }}
          placeholder="test"
          onChangeText={e => console.log(e)}
        />
        <View style={{ height: 50 }} />
        <TouchableWithoutFeedback onPress={() => { this.ref.blur(); }}>
          <Text>BLUR</Text>
        </TouchableWithoutFeedback>
        {/* <TouchableWithoutFeedback onPress={() => console.log('HELLO')}>
          <Card
            cornerRadius={10}
            shadowElevation={10}
            style={{ height: 200 }}
          >
            <Text>Inner</Text>
          </Card>
        </TouchableWithoutFeedback>


    attributedPlaceholder: PropTypes.string,
    attributedText: PropTypes.string,
    editing: PropTypes.bool,
    enabled: PropTypes.bool,
    hidesPlaceholderOnInput: PropTypes.bool,
    placeholder: PropTypes.string,
    text: PropTypes.string,
    textColor: ColorPropType,
    textInsets: EdgeInsetsPropType,

        <View style={{ height: 50 }} />
        <ProgressBar
          ref={r => console.log(r)}
          style={{ height: 10 }}
          progress={0.33}
          progressTintColor="brown"
          trackTintColor="orange"
        />
        <View style={{ height: 50 }} />
        <Text>Text here</Text> */}
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: 'red',
  },
});
