
import React, { Component } from 'react';
import { ViewPropTypes, ColorPropType, EdgeInsetsPropType, NativeModules, findNodeHandle, requireNativeComponent } from 'react-native';
import { PropTypes } from 'prop-types';

export default class RNMDCTextField extends Component {

  static propTypes = {
    ...ViewPropTypes,
    attributedPlaceholder: PropTypes.string,
    attributedText: PropTypes.string,
    editing: PropTypes.bool,
    enabled: PropTypes.bool,
    hidesPlaceholderOnInput: PropTypes.bool,
    placeholder: PropTypes.string,
    text: PropTypes.string,
    textColor: ColorPropType,
    textInsets: EdgeInsetsPropType,
    onChange: PropTypes.func,
    onChangeText: PropTypes.func,
    onFocus: PropTypes.func,
    onBlur: PropTypes.func,
  }

  static defaultProps = {
    onChange() {},
    onChangeText() {},
    onFocus() {},
    onBlur() {},
  }

  onChange = (e) => {
    this.props.onChange(e);
    this.props.onChangeText(e.nativeEvent.text);
  }

  onFocus = () => {
    this.props.onFocus()
  }

  onBlur = () => {
    this.props.onBlur()
  }

  focus = () => {
    return NativeModules.RNMDCTextFieldManager.focus(findNodeHandle(this))
  }

  blur = () => {
    return NativeModules.RNMDCTextFieldManager.blur(findNodeHandle(this))
  }

  clearText = () => {
    return NativeModules.RNMDCTextFieldManager.clearText(findNodeHandle(this))
  }

  render () {
    return (
      <TextField
        {...this.props}
        onChange={this.onChange}
        onFocus={this.onFocus}
        onBlur={this.onBlur}
      />
    );
  }
}

const TextField = requireNativeComponent('RNMDCTextField', RNMDCTextField);
