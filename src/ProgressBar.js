
import React, { Component } from 'react';
import { ViewPropTypes, ColorPropType, processColor, requireNativeComponent, NativeModules } from 'react-native';
import { PropTypes } from 'prop-types';

const { RNMaterialComponentsProgressBarManager } = NativeModules;

class RNMaterialComponentsProgressBar extends Component {

  static propTypes = {
    ...ViewPropTypes,
    progress: PropTypes.number,
    progressTintColor: ColorPropType,
    trackTintColor: ColorPropType,
  }

  _onProgressBarRef = (ref) => {
    this._progressBarRef = ref;
  }

  setHidden(hidden) {
    return RNMaterialComponentsProgressBarManager.setHidden(this._progressBarRef._nativeTag, hidden);
  }

  render () {
    const progressTintColor = processColor(this.props.progressTintColor);
    const trackTintColor = processColor(this.props.trackTintColor);
    return (
      <ProgressBar
        {...this.props}
        ref={this._onProgressBarRef}
        progressTintColor={progressTintColor}
        trackTintColor={trackTintColor}
      />
    );
  }
}

const ProgressBar = requireNativeComponent('RNMaterialComponentsProgressBar', RNMaterialComponentsProgressBar);

export default RNMaterialComponentsProgressBar
